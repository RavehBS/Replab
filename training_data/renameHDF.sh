#use this from within the folder that has the .hdf5 files. This script renames the HDF5 files in the directory by adding the input number to their name. usage: renameHDF.sh <number>
for FILE in *; num=`echo $FILE | cut -d "." -f1`; newF=`expr $num + $1`.hdf5; mv $FILE $newF; echo moved: $FILE to $newF done