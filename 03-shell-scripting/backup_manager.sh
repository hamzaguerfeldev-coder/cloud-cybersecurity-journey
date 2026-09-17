#!/usr/bin/env bash
#some option depend on user choice to run some script :p
echo "**************** Menu ******************** "
echo "* 1.You wanna see the date ?	       *"
echo "* 2.You wanna see the actual user ?      *"
echo "* 3.You wanna see where are you now ?    *"   
echo "* 4.You wanna now file's directory ?     *"
echo "* 5.Exit maybe !!!                       *"  
echo "******************************************"
read -p "what's in your mind , pick a number : " choice
case "$choice" in 
1)
	echo "the date is $(date)";;
2)
	echo "the actual user is : $(whoami)";;
3)
	echo "you are here : $(pwd)" ;;
4)
	echo "those are the files : $(ls -l)";;
5)
	exit 0;;
*)
	echo "pick a number between 1 and 5 !!!";;
esac
