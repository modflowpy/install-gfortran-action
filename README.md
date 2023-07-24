# install-gfortran-action

[![GitHub tag](https://img.shields.io/github/tag/modflowpy/install-gfortran-action.svg)](https://github.com/modflowpy/install-gfortran-action/tags/latest)
[![CI](https://github.com/modflowpy/install-gfortran-action/actions/workflows/ci.yml/badge.svg?branch=main)](https://github.com/modflowpy/install-gfortran-action/actions/workflows/ci.yml)
[![Project Status: Inactive – The project has reached a stable, usable state but is no longer being actively developed; support/maintenance will be provided as time allows.](https://www.repostatus.org/badges/latest/inactive.svg)](https://www.repostatus.org/#inactive)

An action to setup the [GNU Fortran](https://gcc.gnu.org/fortran/) compiler.

**Note:** [`awvwgk/setup-fortran`](https://github.com/awvwgk/setup-fortran) is recommended for most use cases as it:

- supports a range of GNU compiler toolchain versions
- tests runner/version compatibility daily

This action has one advantage, however: nothing new is installed to the runner, precluding transient network errors.

<!-- START doctoc generated TOC please keep comment here to allow auto update -->
<!-- DON'T EDIT THIS SECTION, INSTEAD RE-RUN doctoc TO UPDATE -->

- [Usage](#usage)
- [Install location](#install-location)
  - [Linux](#linux)
  - [MacOS](#macos)
  - [Windows](#windows)

<!-- END doctoc generated TOC please keep comment here to allow auto update -->

## Usage

To use this action, add a step like the following to your workflow:

```yaml
- name: Setup GNU Fortran
  uses: modflowpy/install-gfortran-action@v1
```

GNU fortran is pre-installed on runners for all three platforms, so there is no need to install it fresh &mdash; this action simply symlinks the compiler executables to a common location `/usr/local/bin/gfortran` on Linux and MacOS, putting `gfortran` on the path. On Windows the action works around an error preventing the default installation from working properly.

## Install location

### Linux

On `ubuntu-latest` runners this action simply symlinks `/usr/bin/gfortran-10` to `/usr/local/bin/gfortran`.

### MacOS

On `macos-latest` runners this action symlinks `/usr/local/bin/gfortran-12` to `/usr/local/bin/gfortran`, as well as `/usr/local/opt/gcc/lib/gcc/12` to the corresponding paths for versions 10 and 11 for compatibility with binaries expecting dynamically loaded modules.

### Windows

On `windows-latest` runners `gfortran` comes pre-installed via Chocolatey. This action works around `gfortran` version `20220626.1` issues by symlinking `/c/ProgramData/Chocolatey/lib/mingw/tools/install/mingw64/bin` to Chocolatey's bin directory.
