#! /bin/bash

echo "Automat z napojami"
select a in "Kawa" "Herbata" "Sok" "Quit"
do
case $a in
"Kawa") echo "Wybrales Kawe. Smacznego!"
exit;;
"Herbata") echo "Wybrales Herbate. Smacznego!"
exit;;
"Sok") echo "Wybrales Sok. Smacznego!"
exit;;
"Quit") echo "Do widzenia."
exit;;
esac
done

exit 0

########################

while [ true ]
do
echo "Automat z napojami"
select a in "Kawa" "Herbata" "Sok" "Quit"
do
case $a in
   "Kawa") echo "Wybrales Kawe. Smacznego!"
   ;;
   "Herbata") echo "Wybrales Herbate. Smacznego!"
   ;;
   "Sok") echo "Wybrales Sok. Smacznego!"
   ;;
   "Quit") echo "Do widzenia."
   exit;;
esac
echo "Wybierz: 1. Kawa 2. Herbata 3. Sok 4. Quit"
done
break
done

exit 0

