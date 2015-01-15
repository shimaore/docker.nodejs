#!/bin/bash
set -e
docker run --rm --name nodejs-test-0001 shimaore/nodejs node -v
docker run --rm --name nodejs-test-0001 shimaore/nodejs node -e 'var fs = require("fs"); var motd = fs.readFileSync("/etc/motd"); var assert = require("assert"); assert.equal(typeof motd, "object"); assert.ok(motd instanceof Buffer);'
docker run --rm --name nodejs-test-0001 shimaore/nodejs npm install bluebird
