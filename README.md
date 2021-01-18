# nRF53 Blinky Experiment

This is an experimental setup to build apps for the newly-released nRF5340DK without the use of `west`, as it severely obfuscates the real dependencies of a project. It has been hacked together without much regard on proper structure, so stay away from production builds.

## Notes
- Run `git submodule update --init --recursive` to load all dependencies.
- Use `./scripts/build.sh` to compile and build the project.
- Used nRF Connect to flash the nRF5340DK. The output binary will be found in `build/zephyr/zephyr.hex`.
    