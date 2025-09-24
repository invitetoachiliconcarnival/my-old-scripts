#!/bin/bash

PAD=1
while (( $PAD < 20 ))
do
read -p "Password character Length: " PAD
if (( $PAD < 20 )); then
echo "Not enough characters"
fi
echo ""
done

for (( i=0; i<20; i++)); do
    CHARS=$(cat /dev/urandom | tr -dc "a-zA-Z0-9!@#$%^&()_+?><~\;" | fold -w $PAD | head -n 1)
    echo $CHARS
done

echo ""
echo "Passwords Generated"
echo ""
#changing vaules for safety
PAD=SFL1
CHARS=LMAO
#sfl means safety feature lol
