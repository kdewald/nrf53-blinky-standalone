# Find Zephyr. This also loads Zephyr's build system.
cmake_minimum_required(VERSION 3.13.1)

set(NRF_CONNECT_SDK_BASE ${CMAKE_CURRENT_SOURCE_DIR}/nrf_connect_sdk)

set(BOARD nrf5340dk_nrf5340_cpuapp)
set(ZEPHYR_BASE ${NRF_CONNECT_SDK_BASE}/zephyr)
set(ZEPHYR_TOOLCHAIN_VARIANT zephyr)
set(ZEPHYR_SDK_INSTALL_DIR ${CMAKE_CURRENT_SOURCE_DIR}/zephyr_sdk)

set(ZEPHYR_MODULES
    ${NRF_CONNECT_SDK_BASE}/nrfxlib  
    ${NRF_CONNECT_SDK_BASE}/nrf
    ${NRF_CONNECT_SDK_BASE}/mcuboot
    ${NRF_CONNECT_SDK_BASE}/modules/hal/nordic
    ${NRF_CONNECT_SDK_BASE}/modules/hal/cmsis)

find_package(Zephyr REQUIRED HINTS ${ZEPHYR_BASE})

project(my_zephyr_app)




# Add your source file to the "app" target. This must come after
# find_package(Zephyr) which defines the target.
target_sources(app PRIVATE src/main.c)