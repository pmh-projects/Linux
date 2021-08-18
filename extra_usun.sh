#! /bin/bash

#Skrypt usuwający konta użytkowników

echo "Ile usunac kont"
read b
echo "Podaj poczatek nazwy konta bez numeru: np. User"
read x
echo "Od ktorego numeru konta zaczac usuwanie:"
read a

b=$[b+a-1]

for ((a; a<=b; a++))
do
 sudo userdel -r $x$a >> /dev/null 2>&1
done

exit 0

