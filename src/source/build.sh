#!/bin/bash
cd $(dirname $0)
export GITHUB=TRUE
(
export PREP_DOCUMENT_DIR=$(pwd)
export DEMO_OUTDIR=../../example/
export DEMO_SUBDIR=FALSE

prep F90 TESTPRG90 --comment doxygen --verbose -i ../../app/source/rand.[fF][fF] -o ../../app/rand.f90
prep F90 TESTPRG90 --comment doxygen --verbose -i ../../app/source/xauth_key.[fF][fF] -o ../../app/xauth_key.f90

GPF_build_module M_random
)
cp ../../docs/man3.html ../../docs/index.html
cp ../../docs/BOOK_M_random.html ../../docs/index.html
ccall ../../test/test_suite_M_random.[fF]90
exit
