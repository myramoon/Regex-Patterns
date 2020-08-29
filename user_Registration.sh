#!/usr/local/bin/bash

#PURPOSE: Add validation pattern for last name


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


# Validation pattern for last name
function validateLastName()
{
	read -p "Enter your last name:" lastname
	
	pattern_LastName="^[A-Z]{1}[a-z]{2,}$"
	if [[ $lastname =~ $pattern_LastName ]]
	then
		echo Valid
	else
		echo Invalid
	fi
}

validateFirstName
validateLastName



















