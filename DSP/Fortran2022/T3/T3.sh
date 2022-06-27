#!/usr/bin/env -S bash -e
# GMT modern mode bash template
# Date:    2022-04-09T22:52:52
# User:    sirius
# Purpose: Purpose of this script
export GMT_SESSION_NAME=$$	# Set a unique session name
gmt begin T3 png/pdf
	# Place modern session commands here
	gmt subplot begin 3x2 -Fs10c/5c -R-5/5/0/60 -A+jTR -BWS -M0
	gmt subplot set 0,0 -A"x"
	gmt plot -Sb0.08cb0 -R-5/5/0/7 -Gblack x.dat
	gmt plot -Sc0.2c -Gblack x.dat
	gmt subplot set 0,1 -A"h"
	gmt plot -Sb0.08cb0 -R-5/5/0/7 -Gblack h.dat
	gmt plot -Sc0.2c -Gblack h.dat
	gmt subplot set 1,0 -A"R_xh"
	gmt plot -Sb0.08cb0 -Gblack R_xh.dat
	gmt plot -Sc0.2c -Gblack R_xh.dat
	gmt subplot set 1,1 -A"R_hx"
	gmt plot -Sb0.08cb0 -Gblack R_hx.dat
	gmt plot -Sc0.2c -Gblack R_hx.dat
	gmt subplot set 2,0 -A"R_xx"
	gmt plot -Sb0.08cb0 -Gblack R_xx.dat
	gmt plot -Sc0.2c -Gblack R_xx.dat
	gmt subplot set 2,1 -A"R_hh"
	gmt plot -Sb0.08cb0 -Gblack R_hh.dat
	gmt plot -Sc0.2c -Gblack R_hh.dat
	gmt subplot end
gmt end show
