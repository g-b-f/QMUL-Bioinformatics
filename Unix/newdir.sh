
#creates set of dirs based on name of practical
echo  "Enter name of practical, with underscores (no spaces)"
read pracName
dirName=("$(date '+%Y-%m-%d')-$pracName") 2> /dev/null #supress spurious error thrown by date
#echo $dirName
mkdir $dirName
cd $dirName
mkdir input
mkdir tmp
mkdir results
touch WHATIDID.TXT
cd $dirName
echo dir $dirName and files created.
