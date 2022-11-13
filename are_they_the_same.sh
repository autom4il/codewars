# parameters are strings; return "true" or "false" (see Sample Tests)

: ' 
Given two arrays a and b write a function comp(a, b) (orcompSame(a, b)) 
that checks whether the two arrays have the "same" elements, with the 
same multiplicities (the multiplicity of a member is the number of times it appears). 
"Same" means, here, that the elements in b are the elements in a squared, regardless of the order.
'

#!/bin/bash

function comp() {
    # your code
    a=($1)
    b=($2)
    for i in ${a[@]}
    do
      num=$(( "$i" * "$i" ))
      if [[ "${b[@]}" =~ "${num}" ]]
      then
        array+=("0")
      else
        array+=("1")
      fi
    done

    echo "${array[@]}" |grep "1" &>/dev/null

    if [[ $? -eq 0 ]]
    then
        echo "false"
    else
        echo "true"
    fi
}

comp "$1" "$2"
