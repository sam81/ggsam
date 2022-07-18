#!/usr/bin/env bash

R CMD build ggsam/
R CMD INSTALL -l ~/.R_library ggsam_1.0.14.tar.gz
rm ggsam.pdf
R CMD Rd2pdf ggsam/


