#!/bin/bash
./configure --with-netcdf=/usr/bin/nc-config $CONFIGURE_OPTIONS
conf=$?
if test $conf -gt 0
then
    echo
    echo "Printing config.log:"
    echo
    echo
    cat config.log
    echo
    echo "Printing config-build.log:"
    echo
    echo
    cat config-build.log
    exit $conf
fi
make || exit
export PYTHONPATH=$(pwd)/tools/pylib/:$PYTHONPATH
cd ./examples
./test_suite_make && ./test_suite
