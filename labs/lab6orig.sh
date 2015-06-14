#CS225 Lab6 More Loops
#Debbie Lane
#04/30/15
#
#Create a script that will check to see 
#if each media file in the medialab dir is in medialab/media.xml
#
#List the filenames in the medialab dir that are not in media.xml
#Display the number of files in the medialab dir that are not in media.xml
#List the media files by name in media.xml that do not exist in the medialab dir
#Display the number of files that are in the media.xml that do not exist in the medialab dir.
#
#Example of data in .xml listed below
# grep filename /root/medialab/media.xml | more
#<field name="filename"></field>
#<field name="filename">lh0812084001.mp3</field>

LIST="/root/medialab/"
FILEXML="/root/medialab/media.xml"
x=(1)
y=(1)
#    if [[ -f "${FILEXML}" && -r "${FILEXML}" ]] ;then                                           #if file exists and it is readable
for FILE in $(ls "${LIST}" | grep .mpg) ;do
    FFXML=$(grep "${FILE}" "${FILEXML}" | grep filename | awk -F\> '{print $2}' | awk -F\< '{print $1}')      #grep -q if you don't want stdout to screen FileFoundXML
        if ! [[  $FFXML ]] ;then
#        echo "$FILE found in XML $FFXML"
#        else
        echo "file$((x++)) $FILE NOT FOUND in XML"

#else
#    echo "${FILEXML} not a readable file" ;exit

       fi
done
exit
