#!/usr/bin/env bash

set -ex

mkdir _db
mongod --dbpath $PWD/_db &
sleep 2
pytest src/Database/Python/Tests/
pkill mongod
