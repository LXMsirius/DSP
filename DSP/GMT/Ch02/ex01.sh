#!/usr/bin/env -S bash -e
# GMT modern mode bash template
# Date:    2022-03-29T19:31:05
# User:    sirius
# Purpose: Purpose of this script
export GMT_SESSION_NAME=$$	# Set a unique session name
gmt begin map png,pdf
	# Place modern session commands here
	gmt basemap -R0/10/0/6 -JX10/6c -Bafg1 -BWSen
	gmt text << EOF
5 1 GMT TEXT1
5 3 GMT TEXT2
5 5 GMT TEXT3
EOF
gmt end show
