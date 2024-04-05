#!/usr/bin/env bash

echo "${@}" >> extra-packages
echo "Updated packages"
cat extra-packages | sort -u | tee extra-packages
