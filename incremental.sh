#!/bin/bash -eux

# Incremental build for making changes to only luanti

export INCREMENTAL=true
./build_luanti.sh
./build_fsroot.sh
./build_www.sh
