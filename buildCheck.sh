#!/usr/bin/env bash

R CMD build ggsam/
rm ggsam.pdf
R CMD Rd2pdf ggsam/
R CMD check ggsam_1.0.12.tar.gz


