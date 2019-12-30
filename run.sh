#!/bin/bash

<<COMMENT
Author: 
	Conner Mattingly

Description: 
	This script is designed to install an ubuntu based operating system with 
	desired software packages and setup various OS configurations as preferred.

Edit History: 
	DEC 20th 2019 [Initial creation of script. Header created.]	
	DEC 24th 2019 [Added packages to config.]

COMMENT

################################################################################
# Global Variables #############################################################
################################################################################

_package_config_filename="bad_file"
_bad_config_file_message=$(cat << EndOfMessage 
ERROR: Either missing package configuration file or file is not a regular file.
File: ${_package_config_filename}
EndOfMessage
)

################################################################################
# Function Definitions #########################################################
################################################################################
function VerifyParams() {
	if [ ! -f $_package_config_filename  ]; then	
		echo $_bad_config_file_message
		echo Exiting.
		exit 1
	fi
}

function UpdateOS() {
	sudo 
}


################################################################################
# Main Script ##################################################################
################################################################################
echo Running OS Configurer.
VerifyParams
UpdateOS
InstallPackages