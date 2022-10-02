## creates set of dirs based on name of practical ##
echo  "Enter name of practical, with underscores (no spaces)"
read pracName                                          # receive input from user, store in variable $pracName
dirName=("$(date "+%Y-%m-%d")-$pracName") 2> /dev/null # combine formatted date with $pracName to create dirName, send error messages to null to ignore them
mkdir $dirName                                         # create a directory with name determined by dirName
cd $dirName                                            # enter said directory
mkdir input                                            # create "input" directory
mkdir tmp                                              # create "tmp" directory
mkdir results                                          # create "results" directory
touch WHATIDID.TXT                                     # create empty WHATIDID.txt without entering it
#cd $dirName                                           # not sure why this doesn't work, cba to fix
echo "directory $dirName and files created."
