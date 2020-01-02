# Minilogue Effects

## Logue-SDK

This project expects the Minilogue SDK to be installed in `~/.local/opt/logue-sdk`. Note that a forked version with correct paths is used from [here](https://github.com/hickscorp/logue-sdk/tree/features/makes-sdk-more-standard) - make sure to checkout the `features/makes-sdk-more-standard` branch as I've worked on making it a bit more modern (Korg's official SDK is a nightmare to use if you have experience with how C/C++ SDKs and include paths are usually exported).

## Editor Config

Note that the following options are recommended if you're using VSCode (Make sure to replace `~/.local/opt/logue-sdk` with the path you've cloned the [Logue SDK](https://github.com/hickscorp/logue-sdk/tree/features/makes-sdk-more-standard)!):

```json
{
  "C_Cpp.default.includePath": [
    "~/.local/opt/logue-sdk/platform/minilogue-xd",
    "~/.local/opt/logue-sdk/platform/ext/CMSIS/CMSIS/Include",
    "~/.local/opt/logue-sdk/tools/gcc/gcc-arm-none-eabi-5_4-2016q3/lib/gcc/arm-none-eabi/5.4.1/include/"
  ],
  "C_Cpp.default.defines": [
    "ARM_MATH_CM4",
    "STM32F401xC",
    "__FPU_PRESENT",
    "CORTEX_USE_FPU=TRUE"
  ],
  "C_Cpp.default.cStandard": "c11",
  "C_Cpp.default.cppStandard": "c++11",
  "C_Cpp.default.compilerArgs": [
    "-mstructure-size-boundary=8",
    "-fno-rtti",
    "-fno-exceptions",
    "-fno-non-call-exceptions"
  ]
}
```
