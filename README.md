# nRF53 Blinky Experiment

This is an experimental setup to build apps for the newly-released nRF5340DK without the use of `west`, as it severely obfuscates the real dependencies of a project. It has been hacked together without much regard on proper structure, so stay away from production builds.

## Notes

- Used `zephyr-sdk-0.12.0-x86_64-linux-setup.run` to generate the `zephyr_sdk` folder.
    - Download from here: `https://github.com/zephyrproject-rtos/sdk-ng/releases/download/v0.12.0/zephyr-sdk-0.12.0-x86_64-linux-setup.run`
    - The necessary unpack command is `./zephyr-sdk-0.12.0-x86_64-linux-setup.run -- -d ./zephyr_sdk -norc -nocmake -y`
- Run the following commands to set up Zephyr and the NRF dependencies (Also available in `download.sh`)
    - `mkdir -p nrf_connect_sdk`
    - `git clone git@github.com:nrfconnect/sdk-mcuboot.git nrf_connect_sdk/mcuboot`
    - `git clone git@github.com:nrfconnect/sdk-nrf.git nrf_connect_sdk/nrf`
    - `git clone git@github.com:nrfconnect/sdk-nrfxlib.git nrf_connect_sdk/nrfxlib`
    - `git clone git@github.com:zephyrproject-rtos/hal_nordic nrf_connect_sdk/modules/hal/nordic`
    - `git clone git@github.com:zephyrproject-rtos/cmsis nrf_connect_sdk/modules/hal/cmsis`
    - `git clone git@github.com:nrfconnect/sdk-zephyr.git nrf_connect_sdk/zephyr`
        Note: Zephyr expects the other folders to live side by side with these specific names.
- Use `./build.sh` to compile and build the project
- Used nRF Connect to flash the nRF5340DK. The output binary will be found in `.build/zephyr/zephyr.hex`.
    