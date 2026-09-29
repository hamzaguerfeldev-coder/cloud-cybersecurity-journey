#!/usr/bin/env bash
# let's try some magic with maps by priting /adding/modifiyng and deleting some maps key/content
#this our little menu :p
echo "***************Menu****************"
echo "*1.Add content to your map        *"
echo "*2.Remove content from your       *"
echo "*3.Show all map's keys            *"
echo "*4.Exit 				*"
#declace our map
declare -A servers=(
[01]="192.1.1.1"
[02]="192.2.2.2"
[03]="192.3.3.3"
[04]="192.4.4.4"
)
#function show all value of map
show_all() {
    for key in "${!servers[@]}"; do
        echo "$key -> ${servers[$key]}"
    done
}

#function add a value to a map
add()
{
read -p "give a key to your element : " k
read -p "what you wanna add as element : " element
servers["$k"]="$element"
if [[ -v "servers[$k]" ]]; then
    echo "Added with successfully"
else
    echo "ERROR in adding "
fi
}

#function remove a value from map 
remove()
{
read -p "what is the element you wanna delete : " element 

if [[ -v "servers[$element]" ]]; then 
unset "servers[$element]"
echo "Deleted successfully"
else echo "Element not found"
fi 
}

#let's start 
read -p "Give a choice [1-4] : " choice 
while [[ "$choice" != "4" ]]; do   
case "$choice" in 
1)
add
;;
2)
remove
;;
3)
show_all
;;
4)
exit
;;
*) echo "Invalid option "
;; 
esac
read -p "Give a choice [1-4] : " choice

done
echo "See you soon !! Goodbye :p "
