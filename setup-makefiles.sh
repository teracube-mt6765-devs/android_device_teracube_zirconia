#!/bin/bash
#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

set -e

export DEVICE=zirconia
export DEVICE_COMMON=mt6765-common
export VENDOR=teracube

"./../../${VENDOR}/${DEVICE_COMMON}/setup-makefiles.sh" "$@"
