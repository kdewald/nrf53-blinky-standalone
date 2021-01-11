#!/bin/bash

mkdir -p nrf_connect_sdk
git clone git@github.com:nrfconnect/sdk-mcuboot.git nrf_connect_sdk/mcuboot
git clone git@github.com:nrfconnect/sdk-nrf.git nrf_connect_sdk/nrf
git clone git@github.com:nrfconnect/sdk-nrfxlib.git nrf_connect_sdk/nrfxlib
git clone git@github.com:zephyrproject-rtos/hal_nordic nrf_connect_sdk/modules/hal/nordic
git clone git@github.com:zephyrproject-rtos/cmsis nrf_connect_sdk/modules/hal/cmsis
git clone git@github.com:nrfconnect/sdk-zephyr.git nrf_connect_sdk/zephyr

wget https://github.com/zephyrproject-rtos/sdk-ng/releases/download/v0.12.0/zephyr-sdk-0.12.0-x86_64-linux-setup.run
chmod +x zephyr-sdk-0.12.0-x86_64-linux-setup.run
./zephyr-sdk-0.12.0-x86_64-linux-setup.run -- -d `pwd`/zephyr_sdk -norc -nocmake -y