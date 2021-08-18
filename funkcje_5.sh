#! /bin/bash

function spakuj(){

echo "Wskaz ściezkę do spakowania"
read a
echo "Podaj nazwe dla spakowanego pliku (bez rozszerzenia)"
read b

tar -czf $b.tar $a
}

spakuj

exit 0
