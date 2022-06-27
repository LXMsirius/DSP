#!/usr/bin/env -S bash -e
# GMT modern mode bash template
# Date:    2022-03-29T19:22:34
# User:    sirius
# Purpose: Purpose of this script
export GMT_SESSION_NAME=$$	# Set a unique session name
gmt begin symbols03 png,pdf
	# Place modern session commands here
	gmt plot -R0/10/0/10 -JX10c/10c -Baf -Sc -W1p,black -Gred << EOF
	2 3 0.3
5 6 0.8
8 2 0.5
EOF
gmt end show
