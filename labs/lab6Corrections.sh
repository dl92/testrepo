#CS225 Lab6 More Loops
#Debbie Lane
#04/30/15
#
#Create a script that will check to see 
#if each media file in the medialab dir is in medialab/media.xml
#
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

#List the filenames in the medialab dir that are not in media.xml
#Display the number of files in the medialab dir that are not in media.xml

###for FILE in $(ls "${LIST}" | grep .mpg) ;do
###    FFXML=$(grep "${FILE}" "${FILEXML}" | grep filename | awk -F\> '{print $2}' | awk -F\< '{print $1}')      #grep -q if you don't want stdout to screen FileFoundXML
###        if ! [[  $FFXML ]] ;then

for FILE in $(ls /root/medialab/*.mpg) ;do
    if [[ ! -e /root/medialab/$FILE ]] ;then        #if does not Exist
        echo "file$((x++)) $FILE NOT FOUND in XML"
    fi
done
#        echo "$FILE found in XML $FFXML"
#        else
###        echo "file$((x++)) $FILE NOT FOUND in XML"

#else
#    echo "${FILEXML} not a readable file" ;exit

       fi
done

#List the media files by name in media.xml that do not exist in the medialab dir
#Display the number of files that are in the media.xml that do not exist in the medialab dir.

#Clean-up from previous run
rm  /root/labs/listxml.txt


#for LISTXML in $(grep filename ${FILEXML} | awk -F\> '{print $2}' | awk -F\< '{print $1}') ;do
grep filename ${FILEXML} | awk -F\> '{print $2}' | awk -F\< '{print $1}' | egrep -v \s > /root/labs/listxml.txt

#echo $LISTXML
###for FILEX in $(cat "/root/labs/listxml.txt") ;do
###    FILEMEDIA=$(ls "${LIST}") 
###    #FFMEDIA=$(ls "${LIST}") | grep ${FILEX} ${FILE})
###    FFMEDIA=$(grep ${FILEX} ${FILEMEDIA})
###        if ! [[ ${FFMEDIA} ]] ;then
###            echo "file$((y++)) $FILEX not found in $LIST"
###        fi
###done

for FILEX in $(cat "/root/labs/listxml.txt:) ;do
    if [[ ! -e ${LIST}" ]] ;then
        echo "file$((y++)) $FILEX not found in $LIST"
    fi
done

exit
