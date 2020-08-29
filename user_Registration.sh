#!/usr/local/bin/bash

# Validation pattern for first name

function validateFirstName()
{
	read -p "Enter your first name:" firstname

	pattern_FirstName="^[A-Z]{1}[a-z]{2,}$"
	if [[ $firstname =~ $pattern_FirstName ]]
	then
		echo Valid
	else
		echo Invalid
	fi
}

validateFirstName





















