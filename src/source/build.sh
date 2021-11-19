#!/bin/bash
cd $(dirname $0)
export GITHUB=TRUE
(
export PREP_DOCUMENT_DIR=$(pwd)
export DEMO_OUTDIR=../../example/
export DEMO_SUBDIR=FALSE
GPF_build_module M_random
)
exit
