# Random-image-generator
# simple script that generates fuzzy images based on the users input
# ---
# free to modify and share but you must give me credit
# ---
# Q: what dose "RIG" mean
#
# A: random image generator
#
# ---
# how to run:
#
# 1.download code
# 2.unzip
# 3.make sure you set permissions of the files "RIG.sh" to be executable
# 4.open terminal to the DIR of the files 
# 5.run "./RIG.sh" in terminal without qoutes
# 6.it will ask you what width you want so this works in pixels etc: if i wanted a fuzzy image of 1080p i would enter
# 1920 as the width and 1080 as the height


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

