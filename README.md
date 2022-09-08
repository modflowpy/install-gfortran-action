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
- [Disclaimer](#disclaimer)

<!-- END doctoc generated TOC please keep comment here to allow auto update -->

## Usage

To use this action, add a step like the following to your workflow:

```yaml
- name: Install GNU Fortran
  uses: modflowpy/install-gfortran-action@v0.0.1
```

## Install location

### Linux

On Linux `gfortran` version 10 is installed to `/usr/bin/gfortran-10` and symlinked to `/usr/local/bin/gfortran`.

### MacOS

On MacOS `gfortran` version 11 is installed to `/usr/local/bin/gfortran-11` and symlinked to `/usr/local/bin/gfortran`.

### Windows

On Windows `gfortran` is installed via Chocolatey.

## Disclaimer

This software is preliminary or provisional and is subject to revision. It is being provided to meet the need for timely best science. The software has not received final approval by the U.S. Geological Survey (USGS). No warranty, expressed or implied, is made by the USGS or the U.S. Government as to the functionality of the software and related material nor shall the fact of release constitute any such warranty. The software is provided on the condition that neither the USGS nor the U.S. Government shall be held liable for any damages resulting from the authorized or unauthorized use of the software.
