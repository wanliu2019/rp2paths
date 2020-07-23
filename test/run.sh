#!/bin/bash

printf "\n"

tput bold
printf "Test normal case\n"
tput sgr0
if [ -d "out_normal" ]; then rm -Rf out_normal; fi
python3 ../src/RP2paths.py all in/rp2_pathways.csv --outdir out_normal --timeout 5
printf "\n"

tput bold
printf "Test no scope matrix produced"
tput sgr0
if [ -d "out_no_scope" ]; then rm -Rf out_no_scope; fi
python3 ../src/RP2paths.py all in/rp2_pathways_nomatrix.csv --outdir out_no_scope --timeout 5
