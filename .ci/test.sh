#!/usr/bin/env bash

REPO_DIR=$(git rev-parse --show-toplevel)

pushd "${REPO_DIR}" >/dev/null

docker compose run --rm tests

EXIT_CODE=$?

popd >/dev/null

exit $EXIT_CODE
