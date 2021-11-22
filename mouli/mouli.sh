#!/bin/bash

RED='\033[1;31m'
GRE='\033[1;32m'
BLE='\033[1;36m'
WHI='\033[1;37m'
NC='\033[0m'

test() {
    name="$1"
    testfile="$2"
    expected="$3"
    timeout 20 ./bsq "$testfile" > test
    if [ "$?" -eq 124 ]
    then
        printf "${WHI}________________________${NC}\n"
        printf "|[${WHI}${name}${NC}]\t"
        printf "[${RED}TIME OUT${NC}]     |\n"
    else
        diff "$expected" test &> /dev/null
        printf "${WHI}________________________${NC}\n"
        printf "|[${WHI}${name}${NC}]\t"
        if [ $? -eq 0 ]
        then
            printf "[${GRE}TEST PASSED${NC}]  |\n"
        else
            printf "[${RED}|TEST FAIL|${NC}]  |\n"
        fi
    fi

}

test "1" "map/map1" "solv/sol1"
test "2" "map/map2" "solv/sol2"
test "3" "map/map3" "solv/sol3"
test "4" "map/map4" "solv/sol4"
test "5" "map/map5" "solv/sol5"
test "6" "map/map6" "solv/sol6"
test "7" "map/map7" "solv/sol7"
test "8" "map/map8" "solv/sol8"
test "9" "map/map9" "solv/sol9"
test "10" "map/map10" "solv/sol10"
test "11" "map/map11" "solv/sol11"
test "12" "map/map12" "solv/sol12"
test "13" "map/map13" "solv/sol13"
test "14" "map/map14" "solv/sol14"
test "15" "map/map15" "solv/sol15"
test "16" "map/map16" "solv/sol16"
test "17" "map/map17" "solv/sol17"
test "18" "map/map18" "solv/sol18"
test "19" "map/map19" "solv/sol19"
test "20" "map/map20" "solv/sol20"
test "21" "map/map21" "solv/sol21"
test "22" "map/map22" "solv/sol22"
test "23" "map/map23" "solv/sol23"
test "24" "map/map24" "solv/sol24"
test "25" "map/map25" "solv/sol25"
test "26" "map/map26" "solv/sol26"
test "27" "map/map27" "solv/sol27"
test "28" "map/map28" "solv/sol28"
test "29" "map/map29" "solv/sol29"
test "30" "map/map30" "solv/sol30"
test "31" "map/map31" "solv/sol31"
test "32" "map/map32" "solv/sol32"
test "33" "map/map33" "solv/sol33"
test "34" "map/map34" "solv/sol34"
test "35" "map/map35" "solv/sol35"
test "36" "map/map36" "solv/sol36"
test "37" "map/map37" "solv/sol37"
test "38" "map/map38" "solv/sol38"
test "39" "map/map39" "solv/sol39"

printf "${BLE} _  _   __   _  _  __    __    ____  ____   __  
( \/ ) /  \ / )( \(  )  (  )  (  _ \/ ___) /  \ 
/ \/ \(  O )) \/ (/ (_/\ )(    ) _ (\___ \(  O )
\_)(_/ \__/ \____/\____/(__)  (____/(____/ \__\)\n${NC}"
