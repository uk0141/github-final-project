#!/bin/bash
# Script to calculate simple interest

echo "Enter the Principal amount:"
read p
echo "Enter Rate of Interest per year:"
read r
echo "Enter Time period in years:"
read t

# Calculate Simple Interest formula: (p * r * t) / 100
s=$(echo "scale=2; ($p * $r * $t) / 100" | bc -l 2>/dev/null || awk "BEGIN {print ($p * $r * $t) / 100}")

echo "The Simple Interest is: $s"
