# Overview of CMake Option for Compilation

Here are the translation details for the compilation parameters as per your requirement:

| **Parameter**                         | **Default Value** | **Description**                                                                                                                                            |
|---------------------------------------| --- |------------------------------------------------------------------------------------------------------------------------------------------------------------|
| ISF_THIRD_PARTY_DIR                   | 3rdparty | Path for required third-party libraries                                                                                                                    |
| ISF_SANITIZE_ADDRESS                      | OFF | Enable AddressSanitizer for memory error detection                                                                                                         |
| ISF_SANITIZE_LEAK                         | OFF | Enable LeakSanitizer to detect memory leaks                                                                                                                |
| ISF_ENABLE_RKNN                           | OFF | Enable RKNN for Rockchip embedded devices                                                                                                                  |
| ISF_RK_DEVICE_TYPE                        | RV1109RV1126 | Target device model for Rockchip(Supports RV1109RV1126 and RV1106)             |
| ISF_RK_COMPILER_TYPE | armhf | The **armhf**、**armhf-uclibc** and aarch64 compilers are supported. Select one based on the actual situation |
| ISF_ENABLE_RGA | OFF | Enable **RGA** image acceleration on Rockchip devices (currently only supported on devices using **RKNPU2**) |
| ISF_BUILD_LINUX_ARM7                      | OFF | Compile for ARM7 architecture                                                                                                                              |
| ISF_BUILD_LINUX_AARCH64                   | OFF | Compile for AARCH64 architecture                                                                                                                           |
| ISF_BUILD_WITH_TEST                       | OFF | Compile test case programs                                                                                                                                 |
| ISF_BUILD_WITH_SAMPLE                     | ON | Compile sample programs                                                                                                                                    |
| ISF_BUILD_SHARED_LIBS                     | ON | Compile shared libraries                                                                                                                                   |
| ISF_ENABLE_BENCHMARK                      | OFF | Enable Benchmark tests for test cases                                                                                                                      |
| ISF_ENABLE_USE_LFW_DATA                   | OFF | Enable using LFW data for test cases                                                                                                                       |
| ISF_ENABLE_TEST_EVALUATION                | OFF | Enable evaluation functionality for test cases, must be used together with ISF_ENABLE_USE_LFW_DATA                                                         |
| ISF_GLOBAL_INFERENCE_BACKEND_USE_MNN_CUDA | OFF | Enable global MNN_CUDA inference mode, requires device support for CUDA                                                                                    |
| ISF_LINUX_MNN_CUDA                        | "" | Specific MNN library path, requires pre-compiled MNN library supporting MNN_CUDA, only effective when ISF_GLOBAL_INFERENCE_BACKEND_USE_MNN_CUDA is enabled |
| MNN_CUSTOM_SOURCE | "" | Using this option to replace different versions of MNN, the input must be the root directory of the MNN source code. |
| INSPIRECV_BACKEND_OPENCV | OFF | The image processing backend relies on OpenCV and is **not recommended** |
| ISF_ENABLE_COST_TIME | OFF | This parameter can be used to print the time of some important compute nodes in the Debug state |

