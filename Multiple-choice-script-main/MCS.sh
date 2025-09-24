#!/bin/bash

echo DO NOT USE THE PASSWORD OR EMAIL FUCTIONS FOR REAL USE,THIS SCRIPT IS A TOY
echo CHANGES TO ORIGINAL SCRIPT: REMOVED FUZZY IMAGE GENERATE SINCE IT BROKE
shopt -s checkwinsize
(:;:) # sleep for a bit to let Bash populate $LINES and $COLUMNS
printf -v quitfill '%*s' $((COLUMNS - 10)) ''
PS3='Please enter your choice: '
options=("Email Generate" "Password generate (urandom verison)" "Password generate (choose verison)" "Password generate (openssl verison)" "fuzzy image generate" "Question script thing" "clear text" "Quit$quitfill")
select opt in "${options[@]}"
do
    case $opt in
        "Email Generate")
            #!/bin/bash

read -p "The Email's Top Level Domain: " TLD

for (( i=0; i<20; i++)); do
	CHARS=$(cat /dev/urandom | tr -dc "a-zA-Z0-9" | fold -w 24 | head -n 1)
	echo $CHARS@$TLD
done

echo ""
echo "Emails Generated"
echo ""
#changing vaules for safety
TLD=SFL7
CHARS=LMAO
            ;;
        "Password generate (urandom verison)")

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
            ;;
        "Password generate (choose verison)")
            #!/bin/bash
choose() { echo ${1:RANDOM%${#1}:1} $RANDOM; }

{
    choose '!@#$%^\&'
    choose '0123456789'
    choose 'abcdefghijklmnopqrstuvwxyz'
    choose 'ABCDEFGHIJKLMNOPQRSTUVWXYZ'
    for i in $( seq 1 $(( 4 + RANDOM % 8 )) )
    do
        choose '0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ'
    done

} | sort -R | awk '{printf "%s",$1}'
echo ""
            ;;
        "Password generate (openssl verison)")
            #!/bin/bash

read -p "Enter the password Length: " PASS_LENGTH
for VAR in $(seq 1 10);
do
    openssl rand -base64 48 | cut -c1-$PASS_LENGTH
done
            ;;
        "fuzzy image generate")
            # read the users input
read -p "width: " WID
read -p "height: " HEI
#convert random text to image based on the users input
mx=$WID;my=$HEI;head -c "$((3*mx*my))" /dev/urandom | convert -depth 8 -size "${mx}x${my}" RGB:- "generated.png"
#echo some words
echo ""
echo "fuzzy images generated!"
echo ""
# changing some vaules for safety
WID=SFL5
HEI=SFL7
# sfl means safety feature lol
            ;;
        "Question script thing")
            #!/bin/bash

read -p "file name: " CFL
touch $CFL.txt
read -p "whats the topic: " OOP
echo "$OOP" >> $CFL.txt
echo "" >> $CFL.txt
read -p "whats question 1: " AAB
echo "Q1: $AAB?" >> $CFL.txt
echo "" >> $CFL.txt
read -p "whats question 2: " BBC
echo "Q2: $BBC?" >> $CFL.txt
echo "" >> $CFL.txt
read -p "whats question 3: " CCD
echo "Q3: $CCD?" >> $CFL.txt
echo "" >> $CFL.txt
read -p "whats question 4: " DDE
echo "Q4: $DDE?" >> $CFL.txt
echo "" >> $CFL.txt
read -p "whats question 5: " EEF
echo "Q5: $EEF?" >> $CFL.txt
echo "" >> $CFL.txt
echo "--" >> $CFL.txt
echo "" >> $CFL.txt
read -p "whats answer 1: " FFG
echo "A1: $FFG" >> $CFL.txt
echo "" >> $CFL.txt
read -p "whats answer 2: " GGH
echo "A2: $GGH" >> $CFL.txt
echo "" >> $CFL.txt
read -p "whats answer 3: " HHI
echo "A3: $HHI" >> $CFL.txt
echo "" >> $CFL.txt
read -p "whats answer 4: " IIJ
echo "A4: $IIJ" >> $CFL.txt
echo "" >> $CFL.txt
read -p "whats answer 5: " JJK
echo "A5: $JJK" >> $CFL.txt
echo "" >> $CFL.txt
echo "Q=questions" >> $CFL.txt
echo "A=answers" >> $CFL.txt
#just changing vaules for safety incase of shell hijack
CFL=$RANDOM
OOP=$RANDOM
AAB=$RANDOM
BBC=$RANDOM
CCD=$RANDOM
DDE=$RANDOM
EEF=$RANDOM
FFG=$RANDOM
GGH=$RANDOM
HHI=$RANDOM
IIJ=$RANDOM
JJK=$RANDOM
            ;;
        "clear text")
            clear
            echo "1) Email Generate"
            echo "2) Password generate (urandom verison)"
            echo "3) Password generate (choose verison)"
            echo "4) Password generate (openssl verison)"
            echo "5) fuzzy image generate"
            echo "6) Question script thing"
            echo "7) clear text"
            echo "8) Quit"
            ;;
        "Quit"*)
            break
            ;;
        *) echo "invalid option $REPLY";;
    esac
done
