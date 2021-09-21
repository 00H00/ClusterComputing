#!/bin/bash


function confirm () {
	echo "Do you want to shutdown all? (yes/no)"
	read input

	if [ -z $input ] ; then
		echo "Enter yes or no."
		confirm
	elif [ $input = 'yes' ] || [ $input = 'y' ] ; then
		echo "shutdown ..."
	elif [ $input = 'no' ] || [ $input = 'n' ] ; then
		echo "canceled."
		exit 1
	else
		echo "Enter yes or no."
		
	fi
}

confirm

echo 'Enter password.'
#ansible-playbook allshutdown.yaml -i hosts --ask-become-pass
echo "hello"
