#!/usr/bin/env -S bash -e
# GMT modern mode bash template
# Date:    2022-04-26T17:35:25
# User:    sirius
# Purpose: Purpose of this script
export GMT_SESSION_NAME=$$	# Set a unique session name
gmt begin T6 png/pdf
	# Place modern session commands here
	gmt subplot begin 3x1 -Ff30c/40c -BWS -A+jTC+o3 -Cx2 -Cy2
	gmt subplot set 0 -A'X(k),N=10'
	gmt plot -Sb0.08cb0 -JX30c/10c -R-6/6/-5/5 Xk.data -Gblack -Bx+l'k' -By+l'X(k)'
	gmt plot -Sc0.2c -JX30c/10c Xk.data -Gblack
	gmt subplot set 1 -A'X(w)'
	gmt plot -JX30c/10c -R-7/7/-5/5 Xw.data -Bx+l'w' -By+l'X(w)'
	gmt subplot set 2 -A'X(K),N=10'
	gmt plot -Sb0.08cb0 -JX30c/10c -R-11/11/-5/5 Xk10.data -Bx+l'k' -By+l'X(k)' -Gblack
	gmt plot -Sc0.2c -JX30c/10c Xk10.data -Gblack
	gmt subplot end
gmt end show
