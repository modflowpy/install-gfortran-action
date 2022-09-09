# install-gfortran-action

[![CI](https://github.com/modflowpy/install-gfortran-action/actions/workflows/commit.yml/badge.svg?branch=develop)](https://github.com/modflowpy/install-gfortran-action/actions/workflows/commit.yml)
![Status](https://img.shields.io/badge/-under%20development-yellow?style=flat-square)

An action to install the [GNU Fortran](https://gcc.gnu.org/fortran/) compiler.

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
- name: Install GNU Fortran
  uses: modflowpy/install-gfortran-action@v0.0.1
```

GNU fortran is pre-installed on runners for all three platforms, so there is no need to install it fresh &mdash; this action simply symlinks the compiler executable to a common location on Linux and MacOS and works around a Windows Server 2022 error preventing the default installation from working properly.

## Install location

### Linux

On Linux `gfortran` version 10 is installed to `/usr/bin/gfortran-10` and symlinked to `/usr/local/bin/gfortran`.

### MacOS

On MacOS `gfortran` version 11 is installed to `/usr/local/bin/gfortran-11` and symlinked to `/usr/local/bin/gfortran`.

### Windows

On Windows `gfortran` is installed via Chocolatey.
