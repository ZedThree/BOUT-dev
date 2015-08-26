#!/bin/bash

export PYTHONPATH=$(pwd)/tools/pylib/:$PYTHONPATH
./examples/test_suite_make && ./examples/test_suite
