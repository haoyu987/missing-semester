#!/user/bin/env bash

macro () {
 echo "current working directory is $(pwd)"
 macro_wd=$(pwd)

 #use{} to define the boundary of the variable name
 echo "macro_wd=${macro_wd}"
}

#macro

# the other way to define function
function polo () {
 echo "changing directory to ${macro_wd}"
 
 #use double quotes so the variable will be taken as a single string to avoid unexpected behaviours if there are any special chars in the variable like *
 cd "${macro_wd}" 
}
