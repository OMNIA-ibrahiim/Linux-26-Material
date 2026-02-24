#!/bin/bash

echo "=== Rectangle Calculator ==="

# Take user input
read -p "Enter the length: " length
read -p "Enter the width: " width

# Calculate area and perimeter
area=$((length * width))
perimeter=$((2 * (length + width)))

# Display results
echo "-----------------------------"
echo "Length: $length"
echo "Width: $width"
echo "Area: $area"
echo "Perimeter: $perimeter"

