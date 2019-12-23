#!/bin/bash

<<COMMENT
Author: 
	Conner Mattingly

Description: 
	This script is designed to install an ubuntu based operating system with 
	desired software packages and setup various OS configurations as preferred.

Edit History: 
	DEC 20th 2019 [Initial creation of script. Header created.]	

COMMENT

################################################################################
# Global Variables #############################################################
################################################################################

PACKAGES_FILENAME=$1

################################################################################
# Function Definitions #########################################################
################################################################################
function Usage() { 
	echo Script usage
	echo OS_setup.sh {packages.config}
}

function VerifyParams() {
	if [$PACKAGES_FILENAME == ""]; then 
		echo blah
	fi 


	if [ ! -f $PACKAGES_FILENAME  ]; then	
		echo 
		Usage
	fi
}


################################################################################
# Main Script ##################################################################
################################################################################
echo $PACKAGES_FILENAME
echo Installing packages from 