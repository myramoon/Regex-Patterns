#!/usr/local/bin/bash -x

#PURPOSE: Add validation pattern for Password Condition 3: Must contain at least 1 digit

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


#Validation pattern for Mobile number
function validateMobileNumber()
{
        read -p "Enter your mobile number:" mobilenumber
        pattern_MobileNumber="^([1-9][0-9]){1}[[:space:]]{1}[1-9]{1}[0-9]{9}$"
        if [[ $mobilenumber =~ $pattern_MobileNumber ]]
        then
                echo Valid
        else
                echo Invalid
        fi
}

function validatePassword()
{
	read -p "Enter your password:" password
	pattern_Password1="^[A-Za-z0-9]{8,}"
	pattern_Password2="[A-Z]{1,}"
	pattern_Password3="[0-9]{1,}"
	if [[ $password =~ $pattern_Password1 ]]
	then
		if [[ $password =~ $pattern_Password2 ]]
		then
			if [[ $password =~ $pattern_Password3 ]]
			then
				echo Valid
			else
				echo Invalid password: Password should contain at least 1 digit.
			fi
		else
			echo Invalid password: Password should contain at least 1 upper case letter.
		fi
	else
		echo Invalid password: Password should contain minimum 8characters
	fi

}
 

validateFirstName
validateLastName
validateEmailId
validateMobileNumber
validatePassword











