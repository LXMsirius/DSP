#!/usr/bin/env -S bash -e
# GMT modern mode bash template
# Date:    2022-05-24T16:41:28
# User:    sirius
# Purpose: Purpose of this script
export GMT_SESSION_NAME=$$	# Set a unique session name
gmt begin T91 png/pdf
	# Place modern session commands here
	gmt subplot begin 3x1 -Ff30c/35c

	gmt subplot set 0
	gmt plot -Sb0.01cb0 -JX30c/10c -R0/10/0/15 Xk1.data -Gblack -BWS -Bx+l'n' -By+l'|X(k)|,N=10'

	gmt subplot set 1
	gmt plot -JX30c/10c -R0/100/0/15 Xk2.data -BWS -Bx+l'n' -By+l'|X(k)|,N=100'
	
	gmt subplot set 2
	gmt plot -JX30c/10c -R0/100/0/100 Xk3.data -BWS -Bx+l'n' -By+l'|X(k),N=100'
	gmt subplot end
gmt end show
