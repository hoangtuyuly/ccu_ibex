// Copyright 2021 The CFU-Playground Authors
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

#include "proj_tflite.h"

#include <cstdio>

#include "calc_once_data.h"
#include "playground_util/murmurhash.h"

// Perform capture, if requested
void tflite_preload(const unsigned char* model_data,
                    unsigned int model_length) {
  // Begin capturing for this model, if eabled by preprocessor define.
#ifdef TAIL_ROM_CAPTURE
  calculate_once::capturer.Start(model_data, model_length);
#endif

  // Use captured data, if available
#ifdef TAIL_ROM_USE
  if (calculate_once::GetCache()->InitForModel(model_data, model_length)) {
    puts("Cached data matches model. Will use cached data.\n");
  } else {
    puts("Cached data does not match model\n");
  }
#endif
}

// Finish capture
void tflite_postload() { calculate_once::capturer.Finish(); }