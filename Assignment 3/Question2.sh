#!bin/bash

echo "1)date"
echo "2)cal"
echo "3)ls"
echo "4)pwd"
echo "5)exit"

echo "Enter Your Choice"
read choice

case $choice in
	1) 
		date
		;;
        2)
		cal
		;;
	3)
		ls
		;;
	4)
	        pwd
	        ;;
	5)
	        exit
	        ;;
	*)
	        echo "Invalid Operator"
	        ;;	

	esac
