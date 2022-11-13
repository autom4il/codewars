# parameters are strings; return "true" or "false" (see Sample Tests)

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
