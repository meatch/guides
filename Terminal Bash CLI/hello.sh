#!/bin/bash
echo "Hello World"
echo "I told you so"

#variables
myVar=10
echo $myVar

#functions
function sayMyName() {
	if ["$1" == ""]; then
		echo "You have not told me your name"
	else
		echo "Your name is $1"
	fi
}
#sayMyName
name="Miznitch is the coolest"
#sayMyName "$name"
