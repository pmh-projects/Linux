#! /bin/bash
echo "Podaj numer dnia tygodnia 1-7"

read a

case "$a" in

  "1")
  echo "$a to Poniedzialek"
  ;;
  "2")
  echo "$a to Wtorek"
  ;;
  "3")
  echo "$a to Sroda"
  ;;
  "4")
  echo "$a to Czwartek"
  ;;
  "5")
  echo "$a to Piatek"
  ;;
  "6")
  echo "$a to Sobota"
  ;;
  "7")
  echo "$a to Niedziela"
  ;;
  *) echo "Podana wartość $a nie została rozpoznana."
esac

exit 0
