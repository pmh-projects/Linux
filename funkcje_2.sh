#! /bin/bash

function kalk(){

echo "Kalkulator dwoch liczb."
echo "Podaj pierwsza: "
read a
echo "Podaj druga: "
read b

n1=$a
n2=$b
let dodawanie=n1+n2
let odejmowanie=n1-n2
mnozenie=$[n1*n2]

echo "Wynik dodawania = $dodawanie. Wynik mnozenia = $mnozenie. Wynik odejmowania = $odejmowanie."

}

kalk

exit 0
