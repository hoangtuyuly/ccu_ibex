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

#include <stdint.h>
#include <stdio.h>

#define WRITE(addr, val) (*((volatile uint32_t *)(addr)) = val)

inline unsigned perf_get_mcycle() {
  unsigned result;
  asm volatile("csrr %0, cycle" : "=r"(result));
  return result;
}

inline int putChar(int c) {
  WRITE(0x20000 + 0x0, (unsigned char)c);

  return c;
}

inline void putHex(uint32_t h) {
  int cur_digit;
  // Iterate through h taking top 4 bits each time and outputting ASCII of hex
  // digit for those 4 bits
  for (int i = 0; i < 8; i++) {
    cur_digit = h >> 28;

    if (cur_digit < 10)
      putChar('0' + cur_digit);
    else
      putChar('A' - 10 + cur_digit);

    h <<= 4;
  }
}

inline void putInt(int num) {
  if (num == 0) {
      putChar('0'+ 0);
      return;
  }
  
  if (num < 0) {
    putChar('-');
    num = -num;
  }

  while(num) {
      putChar('0' + (num % 10));
      num /= 10;
  }
}


