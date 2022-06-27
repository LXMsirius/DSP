#!/usr/bin/env -S bash -e
# GMT modern mode bash template
# Date:    2022-03-29T19:16:02
# User:    sirius
# Purpose: Purpose of this script
export GMT_SESSION_NAME=$$	# Set a unique session name
gmt begin sumbols01 png,pdf
	# Place modern session commands here
	gmt plot -R0/10/0/10 -JX10c/10c -Baf -Sc0.5c << EOF
	2 3
	5 6
	8 2
EOF
gmt end show
