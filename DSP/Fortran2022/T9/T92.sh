#!/usr/bin/env -S bash -e
# GMT modern mode bash template
# Date:    2022-05-24T17:18:02
# User:    sirius
# Purpose: Purpose of this script
export GMT_SESSION_NAME=$$	# Set a unique session name
gmt begin T92 png/pdf
	# Place modern session commands here
	gmt subplot begin 1x1 -Ff30c/15c  -Cx2 -Cy2
	gmt subplot set 0
	gmt plot -Sb0.01cb0 -JX20c/10c -R0/63/0/60 Xk4.data -Gblack -BWS -Bx+l'n' -By+l'|X(k)|,N=64'
	gmt plot -Sc0.1c -JX20c/10c -R0/63/0/60 Xk4.data -Gblack
	gmt subplot end
gmt end show
