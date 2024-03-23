#!/usr/bin/env bash

echo "${@}" >> packages
echo "Update packages"
cat packages | sort -u | tee packages
