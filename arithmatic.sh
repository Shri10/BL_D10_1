#UC1
read -p "Enter the value of a: " a
read -p "Enter the value of b: " b
read -p "Enter the value of c: " c


#UC3
result2=$(awk "BEGIN {print $a * $b + $c}")
echo "Result of a * b + c : " $result2