echo $1
rootdirectory="$PWD"
# ---------------------------------

dirs="Art Bionic Build Core Icu4c"

for dir in $dirs ; do
	cd $rootdirectory
	cd $dir
	echo "Reverting $dir patches..."
	git reset --hard
	git clean -f -d
	echo " "
done

# -----------------------------------
echo "Changing to build directory..."
cd $rootdirectory
