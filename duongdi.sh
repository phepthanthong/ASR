#!/bin/bash
# them 1 duong di vao file
# cat chuoi con: z="a b c d"; echo ${z:0:1} => a
# thay the chuoi: tr "bc" "zz" => thay bc bang zz
# lay du lieu: 
# while IFS="->" read a b c 
# do echo $a >> temp done < path 
themduongdi () {
    echo "nhap duong di muon them"
    read duongdi
    echo $duongdi >tam
    tr " " ":" < tam >> path
}
themduongdi
# tim kiem chuoi: grep "a->b" path / grep a.*f path
timkiemchuoi () {
    echo "nhap ki tu can tim"
    read $1 $2
    grep $1.*$2 path # ta k quan tam den nhung phan tu o giua 
}
