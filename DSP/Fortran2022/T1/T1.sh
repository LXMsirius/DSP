#!/usr/bin/env -S bash -e
# GMT modern mode bash template
# Date:    2022-03-23T21:37:47
# User:    sirius
# Purpose: Purpose of this script
export GMT_SESSION_NAME=$$	# Set a unique session name
gmt begin T1
	# Place modern session commands here
	#gmt basemap -JX10c -R-10/40/-1/1 -Baf
	#gmt plot  -Sp 1054.dat
	#gmt plot  1055.dat
	gmt subplot begin 3x2 -Fs10c,10c/5c,5c,10c -A1+jTR -BWS
	gmt subplot set 0,0 -A1054
	gmt basemap -R-10/40/-1/1 -Baf
	gmt plot  1054.dat
	gmt subplot set 0,1 -A1055
	gmt basemap -R-10/40/-1/1 -Baf
	gmt plot  1055.dat
	gmt subplot set 1,0 -A1054Dif
	gmt basemap -R-10/40/-1/1 -Baf
	gmt plot  1054.dat_Dif
	gmt subplot set 1,1 -A1055Dif
	gmt basemap -R-10/40/-1/1 -Baf
	gmt plot  1055.dat_Dif
	#gmt subplot set 2,1 -A1056
	#gmt basemap -R-1/1/-1/1 -B
	gmt subplot set 2,0 -A'1055+1054'
	gmt basemap -JX20c/10c -R-10/40/-2/2 -Baf -BWS
	gmt plot -JX20c/10c -R-10/40/-2/2  1056.dat
	gmt subplot end
gmt end show
