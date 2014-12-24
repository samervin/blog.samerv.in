#!/bin/bash
today=`date '+%Y_%m_%d'`;
echo "Building site..."
jekyll build > /dev/null
echo "Zipping site..."
cd _site
zip -r ../site_$today.zip * -x deploy.sh LICENSE README.md > /dev/null
cd ..
echo "Done."
