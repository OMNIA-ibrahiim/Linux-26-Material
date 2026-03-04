#!/bin/bash

MAX_ENERGY=100
energy=$MAX_ENERGY
player=$1

echo "Welcome $player!"
echo "Energy: $energy"

while [[ $energy -ge 0 ]]
do
    echo ""
    echo "Choose an action:"
    echo "1) Fight"
    echo "2) Eat"
    echo "3) Rest"
    echo "4) Exit"

    read choice
    case $choice in
        1)
            echo "You fought a monster!"
            energy=$((energy - 20))
            ;;
        2)
            echo "You ate food."
            energy=$((energy + 10))
            ;;
        3)
            echo "You rested."
            energy=$((energy + 5))
            ;;
        4)
            echo "Goodbye!"
            break
            ;;
        *)
            echo "Invalid option"
            ;;
    esac

    if [[ $energy -gt $MAX_ENERGY ]]; then
        energy=$MAX_ENERGY
    fi

    if [[ $energy -le 0 ]]; then
        echo "Game Over!"
       break
    fi

    echo "Current energy: $energy"
done

