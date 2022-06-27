#!/usr/bin/env -S bash -e
# GMT modern mode bash template
# Date:    2022-04-19T16:31:46
# User:    sirius
# Purpose: Purpose of this script
export GMT_SESSION_NAME=$$	# Set a unique session name
gmt begin T5 png/pdf
	gmt set FONT_TITLE 24p,37,blue FONT_LABEL 16p,37,red
	gmt subplot begin 3x1  -BWS -Ff30c/35c -A+jTC+o3 -Cx2 -Cy2
	gmt subplot set 0,0 -A'X@-a@-(t)'
	gmt plot -R0/4/-8/12 -JX30c/10c Xat.data -Bx+l't/s' -By+l'X@-a@-(t)'
	gmt subplot set 1,0 -A'f@-s@-=12Hz,X@-1@-(n)'
	#gmt basemap -R0/48/-8/12 -BWS+'X@-1@-(n)'
	gmt plot -Sb0.08cb0 -R0/48/-8/12 -JX30c/10c X1n.data -Bx+l'n' -By+l'X@-1@-(n)' -Gblack
	gmt plot -Sc0.1c -JX30c/10c X1n.data -Gblack
	gmt subplot set 2,0 -A'f@-s@-=20Hz,X@-2@-(n)'
	gmt plot -Sb0.08cb0 -R0/80/-8/12 -JX30c/10c X2n.data -Bx+l'n' -By+l'X@-2@-(n)' -Gblack
	gmt plot -JX30c/10c -Sc0.1c X2n.data -Gblack
	gmt subplot end
gmt end show
