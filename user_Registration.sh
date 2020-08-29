#!/usr/local/bin/bash


#PURPOSE: Add validation pattern for Email Id


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


#Validation pattern for Email id
function validateEmailId()
{
	read -p "Enter your email id:" emailid
	
	pattern_EmailId="^[A-Za-z0-9]+([-\.\+\_]{1}[0-9A-Za-z]+)*@[A-Za-z0-9]+.[a-zA-Z]{2,4}([\.\,]{1}[a-z]{2,3}){1}$"
	if [[ $emailid =~ $pattern_EmailId ]]
	then
		echo Valid
	else
		echo Invalid
	fi
}

validateFirstName
validateLastName
validateEmailId
















