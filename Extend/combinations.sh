#!/bin/bash

string1="WYwIjYzMTM2sXWHFETGhkQ"
string2="1QjY0YGNxEDM1cTMxQ2YjV"
string3="Qf2MjYwAzNyIDOjVTZkJTY"

strings=($string1 $string2 $string3)

for ((i = 0; i < ${#strings[@]}; i++)); do
    for ((j = 0; j < ${#strings[@]}; j++)); do
        for ((k = 0; k < ${#strings[@]}; k++)); do
            if [[ $i != $j && $j != $k && $i != $k ]]; then
                combination="${strings[$i]} ${strings[$j]} ${strings[$k]}"
                echo "$combination" | base64 -d
                echo "$combination" | rev | base64 -d
                echo "$combination" | rev | tr -d " " | base64 -d
            fi
        done
    done
done
