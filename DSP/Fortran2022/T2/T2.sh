#!/usr/bin/env -S bash -e
# GMT modern mode bash template
# Date:    2022-03-29T16:46:57
# User:    sirius
# Purpose: Purpose of this script
export GMT_SESSION_NAME=$$	# Set a unique session name
gmt begin T2
	# Place modern session commands here
	# gmt basemap -R-5/5/0/60 -Baf
	gmt subplot begin 3x1 -Fs10c/5c
	gmt subplot set 0,0
	#gmt basemap -R-5/7/0/60
	gmt plot -R-5/7/0/10 -Sb0.08cb0 -Gblack x.dat
	gmt plot -Sc0.2c -Gblack x.dat
	gmt subplot set 1,0
	gmt plot -R-5/7/0/10 -Sb0.08cb0 -Gblack h.dat
	gmt plot -Sc0.2c -Gblack h.dat
	gmt subplot set 2,0
	gmt plot -R-5/7/0/60 -Sb0.08cb0 -Gblack t2.dat
	gmt plot -Sc0.2c -Gblack t2.dat
	gmt subplot end
gmt end show
