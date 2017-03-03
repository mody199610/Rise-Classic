#!/usr/bin/env bash

TRAVIS_BUILD_NUMBER=$1
JOB_NUMBER=$2
TEST_TYPE=$3
TRAVIS_BUILD_DIR=$4
TRAVIS_BRANCH=$5
TRAVIS_PULL_REQUEST_BRANCH=$6

if [ ${TEST_TYPE} == "FUNC" ]; then
  npm run fetchCoverage;
fi
bash .travis/send-report.sh \
    ${TRAVIS_BUILD_NUMBER} \
    ${JOB_NUMBER} \
    ${TEST_TYPE} \
    ${TRAVIS_BUILD_DIR} \
    ${TRAVIS_BRANCH} \
    ${TRAVIS_PULL_REQUEST_BRANCH};
