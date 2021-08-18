#!/bin/bash

#owoc[0]="jablko"
#owoc[1]="gruszka"
#owoc[2]="sliwka"
#owoc[3]="wisnia"

declare -a owoc=(jablko gruszka sliwka wisna)

echo "Pierwszy element tablicy owoc to: ${owoc[0]}"
echo "Wszystkie elementy tablicy owoc to: ${owoc[*]}"
echo "Wszystkie elementy tablicy owoc to: ${owoc[@]}"
echo "Drugi element tablicy owoc ma ${#owoc[1]} znakow"
echo "Tablica owoc ma ${#owoc[*]} elementy"
imie=(Jola Ania Kasia Basia Magda)
echo "Wszystkie elementy tablicy imie to: ${imie[@]}"
unset imie # usuniecie tablicy
echo "Tablica imie ma ${#imie[*]} elementow"
tab1=(`cat /etc/passwd`)
echo "Tablica tab1 ma ${#tab1[*]} elementow"
declare tab2=(`cat /etc/passwd`)
echo "Tablica tab2 ma ${#tab2[*]} elementow"
exit 0
