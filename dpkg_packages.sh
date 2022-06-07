rm -f Packages Packages.gz Packages.bz2
dpkg-scanpackages -m ./debs > Packages
tar zcvf Packages.gz Packages
bzip2 -k Packages
echo "Rebuild success."