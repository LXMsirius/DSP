#!/usr/bin/env -S bash -e
# GMT modern mode bash template
# Date:    2022-03-22T14:32:27
# User:    sirius
# Purpose: Purpose of this script
export GMT_SESSION_NAME=$$	# Set a unique session name
gmt begin figurename
	# Place modern session commands here
	gmt coast -Rg -JH15c -Gpurple -Baf -B+t"My first Plot"
gmt end show
