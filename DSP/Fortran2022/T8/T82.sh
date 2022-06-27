#!/usr/bin/env -S bash -e
# GMT modern mode bash template
# Date:    2022-05-19T23:12:38
# User:    sirius
# Purpose: Purpose of this script
export GMT_SESSION_NAME=$$	# Set a unique session name
gmt begin T82 png/pdf
	# Place modern session commands here
	gmt subplot begin 2x1 -Ff30c/25c
	gmt subplot set 0
	#gmt text -R-1/6/0/18 -D1/0.1 X22.data
	gmt plot -Sb0.1cb0 -R-1/6/0/18 -JX30c/10c X22.data -Gblack -BWS -Bx+l'n' -By+l'x(n)'
	gmt plot -Sc0.2c -JX30c/10c X22.data -Gblack
	gmt text -D0.5/0.5 X22.data -F+f20p
	gmt subplot set 1
	#gmt text -R-1/6/0/18 -JX30c/10c -D1/1 X2.data -F+f20p
	gmt plot -Sb0.1cb0 -R-1/6/0/18 -JX30c/10c X2.data -Gblack -BWS -Bx+l'k' -By+l'X(k)'
	gmt plot -Sc0.2c  -JX30c/10c X2.data -Gblack
	gmt text -JX30c/10c -D0.5/0.5 X2.data -F+f20p
	gmt subplot end
gmt end show
