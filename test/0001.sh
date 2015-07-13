#!/bin/bash
set -e
TAG=`jq -r .version ../package.json`
docker run --rm --name nodejs-test-0001 shimaore/nodejs:${TAG} node -v
docker run --rm --name nodejs-test-0001 shimaore/nodejs:${TAG} node -e 'var fs = require("fs"); var motd = fs.readFileSync("/etc/motd"); var assert = require("assert"); assert.equal(typeof motd, "object"); assert.ok(motd instanceof Buffer);'
docker run --rm --name nodejs-test-0001 shimaore/nodejs:${TAG} npm install bluebird
docker run --rm --name nodejs-test-0001 shimaore/nodejs:${TAG} n latest
docker run --rm --name nodejs-test-0001 shimaore/nodejs:${TAG} curl -s https://google.com/
docker run --rm --name nodejs-test-0001 shimaore/nodejs:${TAG} npm install git+https://github.com/quirkey/sammy.git#245dd7f8869b708b31eed552512e9cdf0f0df501
