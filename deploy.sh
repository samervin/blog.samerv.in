#!/bin/bash
today=`date '+%Y_%m_%d'`;
echo "Building site..."
jekyll build > /dev/null
echo "Updating image permissions..."
chmod o+r _site/images/*
echo "Zipping site..."
cd _site
zip -r ../site_$today.zip * -x deploy.sh LICENSE README.md *.zip > /dev/null
cd ..
echo "Done."
