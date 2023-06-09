#UC1
read -p "Enter the value of a: " a
read -p "Enter the value of b: " b
read -p "Enter the value of c: " c


# UC2
result1=$(awk "BEGIN {print $a + $b * $c}")

# UC3
result2=$(awk "BEGIN {print $a * $b + $c}")

# UC4
result3=$(awk "BEGIN {print $c + $a / $b}")

# UC5
result4=$(awk "BEGIN {print $a % $b + $c}")
echo "Result of a % b + c : " $result4

#UC6
declare -A results
results=( ["a + b * c"]=$result1 ["a * b + c"]=$result2 ["c + a / b"]=$result3 ["a % b + c"]=$result4 )

for key in "${!results[@]}"; do
  echo "Equation: $key - Result: ${results[$key]}"
done

# UC7
resultArray=()
for key in "${!results[@]}"; do
  resultArray+=("${results[$key]}")
done

j=1
for i in "${!results[@]}"; do
  echo "Result array element $j : ${results[$i]}"
  j=$((j+1))
done

# UC8
sortedDescending=( $(printf "%.2f\n" "${resultArray[@]}" | sort -nr) )
echo "Results in Descending Order: ${sortedDescending[@]}"

# UC9
sortedAscending=( $(printf "%.2f\n" "${resultArray[@]}" | sort -n) )
echo "Results in Ascending Order: ${sortedAscending[@]}"
