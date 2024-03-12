#!/usr/bin/env bash

count=0
output_file='q3.out'
error_file='q3.err'
test_file='q3_test.sh'

./${test_file} 1>${output_file} 2>${error_file}
#echo '$?=' "$?"

until [[ "$?" -ne 0 ]]
do
 #echo '$?=' "$?"
 ((count++))
 bash ${test_file} 1>>${output_file} 2>>${error_file}
done

echo "the script has run ${count} times before it fails."
#echo "output:"
#cat ${output_file}
#echo -e "\nerror:"
#cat ${error_file}
