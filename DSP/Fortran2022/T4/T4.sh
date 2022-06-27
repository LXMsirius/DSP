#!/usr/bin/env -S bash -e
# GMT modern mode bash template
# Date:    2022-04-12T17:11:47
# User:    sirius
# Purpose: Purpose of this script
export GMT_SESSION_NAME=$$	# Set a unique session name
gmt begin T4 png/pdf
	# Place modern session commands here
	#gmt set FONT_TAG=12p
	gmt subplot begin 4x2 -Fs20c/10c -R0/12/-4/4 -BWS -A+jTR -C0.2
	gmt subplot set 0,0 -A'Fs=200'
	gmt plot -Sb0.05cb0 -R0/12/-1/1 -Gblack x1n.data
	gmt plot -Sc0.1c -Gblack x1n.data
	gmt subplot set 0,1 -A"sin(2@~\160@~x50t+@~p@~/8)"
	gmt plot -R0/0.07/-1/1 x1t.data
	#gmt text 0.08 1 sin\(2\160x50+\160/8\) -F+f15p,12 text
	gmt subplot set 1,0 -A'Fs=500'
	gmt plot -R0/12/-1/1 -Sb0.05cb0  -Gblack x2n.data
	gmt plot -Sc0.1c -Gblack x2n.data
	#gmt plot x2n.data
	gmt subplot set 1,1 -A"sin(2@~\160@~x125t)"
	gmt plot -R0/0.03/-1/1 x2t.data
	gmt subplot set 2,0 -A"Fs=400/@~p@~"
	gmt plot -R0/18/-1/1 -Sb0.05cb0 -Gblack x3n.data
	gmt plot -Sc0.1c -Gblack x3n.data
	gmt subplot set 2,1 -A"cos(100t)"
	gmt plot -R0/0.21/-1/1 x3t.data
	gmt subplot set 3,0 -A'Fs=720'
	gmt plot -R0/200/-3/3 -Sb0.05cb0 -Gblack x4n.data
	gmt plot -Sc0.1c -Gblack x4n.data
	gmt subplot set 3,1 -A"cos(2@~p@~x50t)+cos(2@~p@~x80t)+cos(2@~p@~x180t)"
	gmt plot -R0/0.4/-3/3 x4t.data
	gmt subplot end
gmt end show
