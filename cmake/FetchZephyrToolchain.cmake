
function(fetch_zephyr_toolchain)
    set(ZEPHYR_TOOLCHAIN_URL https://github.com/zephyrproject-rtos/sdk-ng/releases/download/v0.12.1/zephyr-toolchain-arm-0.12.1-x86_64-linux-setup.run)
    set(ZEPHYR_RUN_FILE ${CMAKE_CURRENT_BINARY_DIR}/zephyr_toolchain.run)
    set(ZEPHYR_TOOLCHAIN_PATH ${CMAKE_CURRENT_BINARY_DIR}/zephyr_toolchain)

    if(NOT EXISTS ${ZEPHYR_RUN_FILE})
        file(DOWNLOAD ${ZEPHYR_TOOLCHAIN_URL} ${ZEPHYR_RUN_FILE} SHOW_PROGRESS)
    endif()

    if(NOT EXISTS ${ZEPHYR_TOOLCHAIN_PATH})
        execute_process(COMMAND chmod +x ${ZEPHYR_RUN_FILE})
        execute_process(COMMAND ${ZEPHYR_RUN_FILE} -- -d ${ZEPHYR_TOOLCHAIN_PATH} -norc -nocmake -y COMMAND_ECHO STDOUT)
    endif()

    set(ZEPHYR_TOOLCHAIN_PATH ${ZEPHYR_TOOLCHAIN_PATH} PARENT_SCOPE)
    set(ZEPHYR_TOOLCHAIN_VARIANT zephyr PARENT_SCOPE)
endfunction()