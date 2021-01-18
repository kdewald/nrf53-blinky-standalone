cmake_minimum_required(VERSION 3.16.1)

include(cmake/FetchZephyrToolchain.cmake)
fetch_zephyr_toolchain()

set(NRF_CONNECT_SDK_BASE ${CMAKE_CURRENT_SOURCE_DIR}/external/nrf_connect_sdk)
set(ZEPHYR_BASE ${NRF_CONNECT_SDK_BASE}/zephyr)
set(ZEPHYR_SDK_INSTALL_DIR ${ZEPHYR_TOOLCHAIN_PATH})

set(ZEPHYR_MODULES
    ${NRF_CONNECT_SDK_BASE}/nrfxlib  
    ${NRF_CONNECT_SDK_BASE}/nrf
    ${NRF_CONNECT_SDK_BASE}/mcuboot
    ${NRF_CONNECT_SDK_BASE}/modules/hal/nordic
    ${NRF_CONNECT_SDK_BASE}/modules/hal/cmsis)

project(my_zephyr_app)

# Find Zephyr. This also loads Zephyr's build system.
set(BOARD nrf5340dk_nrf5340_cpuapp)
find_package(Zephyr REQUIRED HINTS ${ZEPHYR_BASE})

# Add your source file to the "app" target.
target_sources(app PRIVATE src/main.c)