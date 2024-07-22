/*
 * Copyright 2021 The CFU-Playground Authors
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

#ifndef SOFTWARE_CFU_H
#define SOFTWARE_CFU_H

#ifdef CFU_SOFTWARE_DEFINED

#include <algorithm>
#include <cassert>
#include <cstddef>
#include <cstdint>
#include <cstdio>

#include "gateware_constants.h"
#include "global_debug.h"
#include "tensorflow/lite/kernels/op_macros.h"

namespace soft_cfu {

// Multiply-accumulate unit
extern int32_t macc_input_offset;
extern int8_t macc_input[16];
extern int8_t macc_filter[16];
extern uint32_t iterations;

inline void Unpack32(int8_t* dest, uint32_t value) {
  dest[0] = (value & 0x000000ff);
  dest[1] = (value & 0x0000ff00) >> 8;
  dest[2] = (value & 0x00ff0000) >> 16;
  dest[3] = (value & 0xff000000) >> 24;
}

inline void SetMaccInput(size_t n, uint32_t value) {
  Unpack32(macc_input + (4 * n), value);
}
inline void SetMaccFilter(size_t n, uint32_t value) {
  Unpack32(macc_filter + (4 * n), value);
}

// Do one macc operation
inline int32_t MaccOne() {
  int32_t macc_out = 0;
  // NOTE: unrolling this resulted in slower execution
  for (size_t n = 0; n < 16; n++) {
    macc_out += (macc_input[n] + macc_input_offset) * macc_filter[n];
  }
  return macc_out;
}

// Very simple storage class.
// TODO: wrap around at calculated point instead of at end of data
// TODO: allow input data to be double-buffered
#define MAX_STORAGE_WORDS 16384
class Storage {
 public:
  void Reset(size_t num_words) {
    len = num_words;
    index = 0;
  }
  void Store(uint32_t value) {
    data[index++] = value;
    if (index >= len) {
      index = len - 4;
    }
  }
  uint32_t Get(size_t n) { return data[index + n]; }
  void Next() { index = (index + 4) % len; }

 private:
  uint32_t data[MAX_STORAGE_WORDS];
  size_t len;
  size_t index;
};

extern Storage filter_storage;
extern Storage input_storage;

// Run macc operations and return the accumulated output.
inline int32_t Macc() {
  assert(iterations > 0);
  int32_t accumulator = 0;
  while (iterations > 0) {
    filter_storage.Next();
    input_storage.Next();
    SetMaccFilter(0, filter_storage.Get(0));
    SetMaccFilter(1, filter_storage.Get(1));
    SetMaccFilter(2, filter_storage.Get(2));
    SetMaccFilter(3, filter_storage.Get(3));
    SetMaccInput(0, input_storage.Get(0));
    SetMaccInput(1, input_storage.Get(1));
    SetMaccInput(2, input_storage.Get(2));
    SetMaccInput(3, input_storage.Get(3));
    accumulator += MaccOne();
    iterations -= 1;
  }
  return accumulator;
}

struct OutputParams {
  int16_t bias;
  int32_t multiplier;
  uint8_t shift;  // range 3..11
};

class OutputParamsStorage {
 public:
  void Reset() { read_index_ = write_index_ = 0; }
  void Store(int16_t bias, int32_t multiplier, uint8_t shift) {
    params_[write_index_++] = OutputParams{bias, multiplier, shift};
  }
  const OutputParams& Fetch() {
    auto& result = params_[read_index_];
    read_index_ = (read_index_ + 1) % write_index_;
    return result;
  }

 private:
  OutputParams params_[MAX_CHANNELS];
  int write_index_;
  int read_index_;
};

extern OutputParamsStorage output_params_storage;
extern int32_t reg_bias;
extern int32_t reg_multiplier;
extern int32_t reg_output_offset;
extern int32_t reg_output_max;
extern int32_t reg_output_min;

// Verify register storage
extern uint32_t reg_verify;

inline int32_t SaturatingRoundingDoubleHighMul(int32_t value,
                                               int32_t multiplier) {
  bool positive = value >= 0;
  int64_t a_64(positive ? value : -value);
  int64_t b_64(multiplier);
  int64_t ab_64 = a_64 * b_64;
  if (positive) {
    ab_64 += (1 << 30);
  } else {
    ab_64 += (1 << 30) - 1;
  }
  int64_t t = ab_64 >> 31;
  int32_t product = static_cast<int32_t>(t);
  if (!positive) {
    product = -product;
  }
  return product;
}

inline int32_t RoundingDivideByPOT(int32_t value, int32_t shift) {
  TF_LITE_ASSERT(-11 <= shift && shift <= -3);
  int32_t quotient;
  int32_t mask;
  switch (shift) {
    case -3:
      quotient = value >> 3;
      mask = (1 << 3) - 1;
      break;
    case -4:
      quotient = value >> 4;
      mask = (1 << 4) - 1;
      break;
    case -5:
      quotient = value >> 5;
      mask = (1 << 5) - 1;
      break;
    case -6:
      quotient = value >> 6;
      mask = (1 << 6) - 1;
      break;
    case -7:
      quotient = value >> 7;
      mask = (1 << 7) - 1;
      break;
    case -8:
      quotient = value >> 8;
      mask = (1 << 8) - 1;
      break;
    case -9:
      quotient = value >> 9;
      mask = (1 << 9) - 1;
      break;
    case -10:
      quotient = value >> 10;
      mask = (1 << 10) - 1;
      break;
    case -11:
      quotient = value >> 11;
      mask = (1 << 11) - 1;
      break;
    default:
      quotient = 0;
      mask = 0;
      printf("***BAD SHIFT\n");
  }
  int32_t remainder = value & mask;
  int32_t threshold = (mask >> 1) + ((value < 0) ? 1 : 0);
  int32_t rounding = (remainder > threshold) ? 1 : 0;
  return quotient + rounding;
}

class OutputFIFO {
 public:
  OutputFIFO() : read_index_(0), write_index_(0) {}

  void WriteValue(int8_t value) {
    if (global_debug_flag) {
      printf("Write,%u,%02x\n", write_index_, value & 0xff);
    }
    data[write_index_] = value;
    write_index_ = (write_index_ + 1) % kDataSize;
    TF_LITE_ASSERT(write_index_ != read_index_);
  }

  uint32_t ReadWord() {
    uint32_t result = ((data[(read_index_ + 0) % kDataSize] & 0xff) << 0) +
                      ((data[(read_index_ + 1) % kDataSize] & 0xff) << 8) +
                      ((data[(read_index_ + 2) % kDataSize] & 0xff) << 16) +
                      ((data[(read_index_ + 3) % kDataSize] & 0xff) << 24);
    if (global_debug_flag) {
      printf("Read,%u,%08lx\n", read_index_, result);
    }
    TF_LITE_ASSERT((read_index_ & ~3) != (write_index_ & ~3));
    read_index_ = (read_index_ + 4) % kDataSize;
    return result;
  }

 private:
  static constexpr size_t kDataSize = MAX_CHANNELS + 4;
  int8_t data[kDataSize];
  size_t read_index_;
  size_t write_index_;
};

extern OutputFIFO output_fifo;

inline uint32_t PostProcess(int32_t acc) {
  const OutputParams& params = output_params_storage.Fetch();
  acc += params.bias;
  acc = SaturatingRoundingDoubleHighMul(acc, params.multiplier);
  acc = RoundingDivideByPOT(acc, -params.shift);
  acc += reg_output_offset;
  acc = std::max(acc, reg_output_min);
  acc = std::min(acc, reg_output_max);
  output_fifo.WriteValue(acc);
  return 0;
}

inline uint32_t SetRegister(int funct7, uint32_t rs1, uint32_t rs2) {
  switch (funct7) {
    case REG_RESET:
      filter_storage.Reset(0);
      return 0;
    case REG_FILTER_NUM_WORDS:
      filter_storage.Reset(rs1);
      return 0;
    case REG_INPUT_NUM_WORDS:
      input_storage.Reset(rs1);
      return 0;
    case REG_INPUT_OFFSET:
      macc_input_offset = rs1;
      return 0;
    case REG_SET_FILTER:
      filter_storage.Store(rs1);
      return 0;
    case REG_SET_INPUT:
      input_storage.Store(rs1);
      return 0;
    case REG_OUTPUT_PARAMS_RESET:
      output_params_storage.Reset();
      return 0;
    case REG_OUTPUT_OFFSET:
      reg_output_offset = rs1;
      return 0;
    case REG_OUTPUT_MIN:
      reg_output_min = rs1;
      return 0;
    case REG_OUTPUT_MAX:
      reg_output_max = rs1;
      return 0;
    case REG_FILTER_INPUT_NEXT:
      assert(iterations == 0);
      iterations = rs1;
      return 0;
    case REG_OUTPUT_BIAS:
      reg_bias = rs1;
      return 0;
    case REG_OUTPUT_MULTIPLIER:
      reg_multiplier = rs1;
      return 0;
    case REG_OUTPUT_SHIFT:
      output_params_storage.Store(static_cast<int16_t>(reg_bias),
                                  reg_multiplier, static_cast<uint8_t>(-rs1));
      return 0;
    case REG_VERIFY:
      reg_verify = rs1;
      return 0;
    default:
      printf("\nInvalid SetRegister number %d\n", funct7);
      return 0;
  }
  return 0;
}

inline uint32_t GetRegister(int funct7, uint32_t rs1, uint32_t rs2) {
  switch (funct7) {
    case REG_MACC_OUT:
      return Macc();
    case REG_OUTPUT_WORD:
      return output_fifo.ReadWord();
    case REG_VERIFY:
      return reg_verify + 1;
    default:
      printf("\nInvalid GetRegister number %d\n", funct7);
      return 0;
  }
}

inline uint32_t CalculatePostProcessOperation(int funct7, uint32_t rs1,
                                              uint32_t rs2) {
  switch (funct7) {
    case PP_POST_PROCESS:
      return PostProcess(rs1);
    default:
      return 0;
  }
}

extern uint32_t ping_storage;

inline uint32_t Ping(uint32_t rs1, uint32_t rs2) {
  uint32_t result = ping_storage;
  ping_storage = rs1 + rs2;
  return result;
}

};  // namespace soft_cfu

inline uint32_t software_cfu(int funct3, int funct7, uint32_t rs1,
                             uint32_t rs2) {
  switch (funct3) {
    case INS_SET:
      return soft_cfu::SetRegister(funct7, rs1, rs2);
    case INS_GET:
      return soft_cfu::GetRegister(funct7, rs1, rs2);
    case INS_POST_PROCESS:
      return soft_cfu::CalculatePostProcessOperation(funct7, rs1, rs2);
    case INS_PING:
      return soft_cfu::Ping(rs1, rs2);
    default:
      return 0;
  }
}

#else  // CFU_SOFTWARE_DEFINED

// Dummy implementation which returns zeroes. When software CFU is disabled, we
// compile everything out in order to save memory.
inline uint32_t software_cfu(int funct3, int funct7, uint32_t rs1,
                             uint32_t rs2) {
  return 0;
}

#endif  // CFU_SOFTWARE_DEFINED

#endif  // SOFTWARE_CFU_H
