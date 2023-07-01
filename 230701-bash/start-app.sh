#!/bin/bash

default_app_name="Spring"
echo "Application name is ${default_app_name}."
value=25
array=(1 5 ${value} 100 90 1240 2050)
echo "This is our array: ${array[@]}"
index=3
echo "The ${index} element of array is ${array[index]}"
echo "The size of array is: ${#array[@]}"
array[index]=52
array[0]=array[index]
array+=(1099 77)
echo "This is our array in second edition: ${array[@]}"
echo "Please enter a new name of the Application:"
read app_name
echo "Application name is ${app_name}!"

