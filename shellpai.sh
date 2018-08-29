#!/bin/bash
    array=(34 25 1 2 3 3  10 12 23 4 3 45 5 54 32 2 30 3 4 5 6 76 7 65 67  66 77 88  23 32  44   87 90 92 76 20 74 52 54 )
      size=${#array[@]}
      let gap=size

    while [ $gap -gt 1 ]
    do
        let gap=gap/2
            echo $gap
        for((i=gap;i<size;++i))
        do
            let temp=array[i]
            let end=i-gap

            while [ $end -ge 0 -a ${array[$end]} -gt $temp ]
            do
                let array[end+gap]=array[end]
                let end-=gap
            done

            let array[end+gap]=temp

        done
    done

    echo "${array[@]}"


