#!/bin/bash

rougefonce='\e[0;31m'
vertfonce='\e[0;32m'
bleufonce='\e[0;33m'
neutre='\e[0;m'

nb=0

print_perc() {
    SIZE1=$(stat -c%s ${1})
    SIZE2=$(stat -c%s ${2})
    PERC=$(bc <<< "scale=2; ($SIZE2 - $SIZE1)/$SIZE1 * 100")
    echo "with $PERC % compression"
}

make_test() {
    echo -ne "${1}" | ./42sh &> ../res_42sh
    echo -ne "${1}" | tcsh &> ../res_tcsh
    sort ../res_42sh > ../res_42sh2
    sort ../res_tcsh > ../res_tcsh2
    Test=$(diff ../res_42sh2 ../res_tcsh2)
    if [ "$Test" = "" ]
            then
                echo -ne "${vertfonce}TEST ${nb} = ${neutre}"
                echo -n "[${1}]"
                echo -ne "${vertfonce} OK${neutre}\n"
            else
                echo -ne "${rougefonce}TEST ${nb} = ${neutre}"
                echo -n "[${1}]"
                echo -ne "${rougefonce} KO${neutre}\n"
            fi
    let 'nb=nb+1'
}

#make && make clean

echo -e "${bleufonce}1 - 42SH${neutre}\n"

make_test "wc ahi.txt"
make_test "cd ; ls | wc"
make_test "ls -la | wc"
make_test "setenv PATH issou:caca"
make_test "where ls"
make_test "where"
make_test "where cd"
make_test "false || && ls"
make_test "true && || ls"
make_test "true && false || ls && ls && false || true && false"
make_test "true && false || ls && ls && false || true && false || && ls"
make_test "setenv"
make_test "setenv 4dede zevzev"
make_test "env"
make_test "setenv filsde pute"
make_test "unsetenv"
make_test "unsetenv caca"
make_test "unsetenv filsde"
make_test "ls | cat -e ; echo yo"
make_test "cd-"
make_test "\n"
make_test "echo fdp > caca.txt"
make_test "echo fdp > ca"
make_test "exit"
make_test "ls"
make_test "azedc"
make_test "pwd"
make_test "ls -l"
make_test "./42sh"
make_test "setenv patate"
make_test "unsetenv *"
make_test "unsetenv groscaca"
make_test "setenv patate pat"
make_test "unsetenv issou"
make_test "setenv dezdzed ^ded"
make_test "setenv dezdzed"
make_test "unsetenv"
make_test "setenv patate\nunsetenv patate"
make_test "unsetenv pwd"
make_test "setenv coucou="
make_test "setenv hey_"
make_test "cd\npwd"
make_test "cd/npwd"
make_test "cd zesdrfgthvf"
make_test "cd main.c"
make_test "cd include"
make_test " ls\t\t-l"
make_test "\t\tpwd\n \t\tcd\npwd"
make_test "  \tpwd\t \ncd\t    \n ls"
make_test "pwd\t\tcd      pwd\t\n"
make_test "ls -l"
make_test "./prog_with_divZero"
make_test "../directory"
make_test "./thbv"
make_test "cd ../\n cd ../\n cd -\n"
make_test "ls ; cd ; pwd"
make_test "ls;cd;pwd;cd -"
make_test ";;;;;;"
make_test ";;;ls;;;"
make_test "./.............................................................................................................................................................................................................................................................................................................................."
