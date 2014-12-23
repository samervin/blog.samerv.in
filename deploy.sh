echo "Building site..."
jekyll build > /dev/null
echo "Zipping site..."
zip -r site.zip _site/* > /dev/null
echo "Done."
