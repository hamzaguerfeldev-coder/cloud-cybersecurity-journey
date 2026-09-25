#!/usr/bin/env bash

echo "******************* Menu ****************************"
echo "* 1. Add element to Fruits                          *"
echo "* 2. Add element to Animals                         *"
echo "* 3. Show all Fruits                                *"
echo "* 4. Show all Animals                               *"
echo "* 5. Exit                                           *"
echo "*****************************************************"

fruits=("Orange" "Banane" "Mango" "Apfel" "Cacoa")
animals=("Katze" "Hund" "Girafe" "Bird" "Fish")

read -p "Give me a choice [1-5]: " choice

while [ "$choice" != "5" ]; do

    case "$choice" in
        1)
            read -p "What fruit is in your mind? " fruit
            fruits+=("$fruit")
            ;;

        2)
            read -p "What animal do you wanna add? " animal
            animals+=("$animal")
            ;;

        3)
            echo "${fruits[@]}"
            ;;

        4)
            echo "${animals[@]}"
            ;;

        *)
            echo "Invalid choice"
            ;;
    esac

    read -p "Give me a choice [1-5]: " choice
done

echo "Goodbye!"
