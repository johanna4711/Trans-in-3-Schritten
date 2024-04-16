sed -i '/# Trans/,$!d' Readme.md
cp Readme.md for-conversion.md
./gh-md-toc Readme.md > temp.txt
sed -i 's/Table of Contents/Inhaltsverzeichnis/' temp.txt
sed -i '$ d' temp.txt
echo "$(cat temp.txt; cat Readme.md )" > Readme.md
rm temp.txt