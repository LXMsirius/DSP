#!/usr/bin/env -S bash -e
# GMT modern mode bash template
# Date:    2022-05-09T17:12:20
# User:    sirius
# Purpose: Purpose of this script
export GMT_SESSION_NAME=$$	# Set a unique session name
gmt begin T71 png/pdf
	# Place modern session commands here
	gmt subplot begin 3x1 -Ff30c/40c -BWS -A+jTC+o3 -Cx2 -Cy2
	gmt subplot set 0 -A'x(n)'
	gmt plot -Sb0.05cb0 -JX30c/10c -R-14/24/0/8 XX1.data -Gblack
	gmt plot -Sc0.1c -JX30c/10c -R-14/24/0/8 XX1.data -Gblack -Bx+l'n' -By+l'x(n)'
	gmt subplot set 1 -A'h(n)'
	gmt plot -Sb0.05cb0 -JX30c/10c -R-14/24/0/3 XX2.data -Gblack
	gmt plot -Sc0.1c -JX30c/10c -R-14/24/0/3 XX2.data -Gblack -Bx+l'n' -By+l'h(n)'
	gmt subplot set 2 -A'y(n)'
	gmt plot -Sb0.05cb0 -JX30c/10c -R-14/24/0/20 XX.data -Gblack
	gmt plot -Sc0.1c -JX30c/10c -R-14/24/0/20 XX.data -Gblack -Bx+l'n' -By+l'y(n)'
	gmt subplot end
gmt end show
