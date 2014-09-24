#!/bin/sh
set -e

docker build -t shimaore/nodejs .

echo "Tests"
(cd test && for test in ./*.sh; do "$test"; done)
