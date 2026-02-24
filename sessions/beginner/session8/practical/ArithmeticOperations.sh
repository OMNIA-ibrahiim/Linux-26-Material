#!/bin/bash

# Assigning the result of an arithmetic expansion to a variable
a=8
b=4
sum=$((a + b))
product=$((a * b))

echo "Sum: $sum"
echo "Product: $product"

# Increment
echo "Increment sum : $((++sum))"
