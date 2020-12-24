#!/bin/bash
docker build -t test-harness .
docker tag test-harness:latest dougbass/connectall:test-harness
docker push dougbass/connectall:test-harness

docker run --env-file setup.sh dougbass/connectall:test-harness
