#! /bin/bash

echo "Czy jest już wieczór? TAK/Tak/T/t lub NIE/Nie/N/n"
read a


if [[ $a == "T" || $a == "t" || $a == "Tak" || $a == "tak" || $a == "TAK" ]]; then
echo "Dobry wieczor";
elif [[ $a == "N" || $a == "n" || $a == "Nie" || $a == "nie" || $a == "NIE" ]]; then
echo "Dzien dobry";
else
echo "Nie rozpoznana odpowiedz: $a"
fi

exit 0 
