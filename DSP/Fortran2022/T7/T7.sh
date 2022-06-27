#!/usr/bin/env -S bash -e
# GMT modern mode bash template
# Date:    2022-05-03T16:43:45
# User:    sirius
# Purpose: Purpose of this script
export GMT_SESSION_NAME=$$	# Set a unique session name
gmt begin T7 png.pdf
	# Place modern session commands here
	gmt subplot  begin 4x2 -Ff26c/30c -BWS -A+jTC+o3 -Cx2 -Cy2
	gmt subplot set 0 -A'x(n)'
	gmt plot -Sb0.03cb0 -JX10c/5c -R-10/9/0/4 X.data -Gblack
	gmt plot -Sc0.1c -JX10c/5c X.data -Gblack -BWS -Bx+l'n' -By+l'x(n)'
	gmt subplot set 1 -A'x((-n))@-5@-'
	gmt plot -Sb0.03cb0 -JX10c/5c -R-10/9/0/4 X1.data -Gblack
	gmt plot -Sc0.1c -JX10c/5c X1.data -Gblack -BWS -Bx+l'n' -By+l'x((-n))@-5@-'
	gmt subplot set 2 -A'x((-n))@-6@-R@-6@-(n)'
	gmt plot -Sb0.03cb0 -JX10c/5c -R-10/9/0/4 X2.data -Gblack
	gmt plot -Sc0.1c -JX10c/5c  X2.data -Gblack -BWS -Bx+l'n' -By+l'x((n))@-6@-R@-6@-(n)'
	gmt subplot set 3 -A'x((n))@-3@-R@-3@-(n)'
	gmt plot -Sb0.03cb0 -JX10c/5c -R-10/9/0/4 X3.data -Gblack
	gmt plot -Sc0.1c -JX10c/5c  X3.data -Gblack -BWS -Bx+l'n' -By+l'x((n))@-3@-R@-3@-(n)'
	gmt subplot set 4 -A'x((n))@-6@-'
	gmt plot -Sb0.03cb0 -JX10c/5c -R-10/9/0/4 X4.data -Gblack
	gmt plot -Sc0.1c -JX10c/5c X4.data -Gblack -BWS -Bx+l'n' -By+l'x((n))@-6@-'
	gmt subplot set 5 -A'x((n-3))@-5@-R@-5@-(n)'
	gmt plot -Sb0.03cb0 -JX10c/5c -R-10/9/0/4 X5.data -Gblack
	gmt plot -Sc0.1c -JX10c/5c X5.data -Gblack -BWS -Bx+l'n' -By+l'x((n-3))@-5@-R@-5@-(n)'
	gmt subplot set 6 -A'x((n))@-7@-R@-7@-(n)'
	gmt plot -Sb0.03cb0 -JX10c/5c -R-10/9/0/4 X6.data -Gblack
	gmt plot -Sc0.1c -JX10c/5c X6.data -Gblack -BWS -Bx+l'n' -By+l'x((n))@-7@-R@-7@-(n)'
	gmt subplot end
gmt end show
