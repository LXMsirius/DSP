#!/usr/bin/env -S bash -e
# GMT modern mode bash template
# Date:    2022-05-17T16:39:58
# User:    sirius
# Purpose: Purpose of this script
export GMT_SESSION_NAME=$$	# Set a unique session name
gmt begin T1 png/pdf
	# Place modern session commands here
	#gmt set FONT_LABEL 12p,ZapfDingbats
	gmt subplot begin 4x1 -Ff30c/50c
	gmt subplot set 0
	gmt plot -Sb0.1cb0 -JX25c/10c -R0/11/0/15 X.data -Gblack -BWS -Bx+l'n' -By+l'X(n)' 
	gmt plot -Sc0.3c -JX25c/10c  X.data -Gblack
	gmt text -JX25c/10c -D1/1 -F+f30p X.data
	gmt subplot set 1
	gmt plot -Sb0.1cb0 -JX25c/10c -R0/11/0/15 XX.data -Gblack -BWS -Bx+l'n' -By+l'X(n)*X(n)'
	gmt plot -Sc0.3c -JX25c/10c  XX.data -Gblack
	gmt text -JX25c/10c -D1/1 -F+f30p XX.data
	gmt subplot set 2
	gmt plot -Sb0.1cb0 -JX25c/10c -R0/11/0/15 XX5.data -Gblack -BWS -Bx+l'n' -By+l'X(n)  X(n)'
	gmt basemap -JX25c/10c -R0/11/0/15 -BWS -By+l'\260' --FONT_LABEL=ZapfDingbats
	gmt plot -Sc0.3c -JX25c/10c  XX5.data -Gblack
	gmt text -JX25c/10c -D1/1 -F+f30p XX5.data
	gmt subplot set 3
	gmt plot -Sb0.1cb0 -JX25c/10c -R0/11/0/15 XX10.data -Gblack -BWS -Bx+l'n' -By+l'X(n)  X(n)'
	gmt basemap -JX25c/10c -R0/11/0/15 -BWS -By+l'\265' --FONT_LABEL=ZapfDingbats
	gmt plot -Sc0.3c -JX25c/10c  XX10.data -Gblack
	gmt text -JX25c/10c -D1/1 -F+f30p XX10.data
	gmt subplot end
gmt end show
