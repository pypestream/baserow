#!/bin/bash
# Bash strict mode: http://redsymbol.net/articles/unofficial-bash-strict-mode/
set -eo pipefail

docker build . -t docker.io/library/baserow_backend -f backend/Dockerfile
docker build . -t docker.io/library/baserow_web-frontend -f web-frontend/Dockerfile
docker build . -t local_all_in_one -f deploy/all-in-one/Dockerfile
