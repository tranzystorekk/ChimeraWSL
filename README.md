# ChimeraWSL

## About

[Chimera Linux](https://chimera-linux.org/) on WSL, based on [wsldl](https://github.com/yuk7/wsldl).

## Installing

1. [Download](https://github.com/tranzystorek-io/ChimeraWSL/releases/latest) installer zip
2. Extract all files in zip file to same directory
3. Run `chimera.exe` to extract rootfs and register to WSL

Exe filename is used as WSL instance name - you can rename it to create multiple installations.

## Usage

Refer to the [wsldl usage reference](https://github.com/yuk7/wsldl#how-to-usefor-installed-instance).

## Build

Dependencies:

- `curl`
- `zip`
- [`just`](https://github.com/casey/just) >= `1.9.0`

The releases are built from the `justfile`. Run the following:

```shell
mkdir build
just -d build --justfile justfile
```
