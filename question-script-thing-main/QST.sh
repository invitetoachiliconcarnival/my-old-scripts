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
