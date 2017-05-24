#!/bin/bash
wget https://patribotics.blog/sitemap.xml --output-document sitemap.xml -nv
cat sitemap.xml | egrep -o "https?://[^<]+" | wget -nv --mirror --wait .5 --random-wait --no-parent --domains patribotics.blog,patribotics.files.wordpress.com,patribotics.wordpress.com --reject-regex '.*\?.*|/feed/$|/amp/$|.*\"https:.*|.*/category/.*|.*/tag/.*|.jpeg$|.jpg$|.png$|.gif$' -R jpeg,jpg,png,gif -i -
find patribotics.blog/ -type f -not -name "*.diffable" -exec sh -c 'mkdir -p `dirname ./diffable/{}`; sed -r -f diffable.sed {} > ./diffable/{}.diffable' \;
git add sitemap.xml
git add patribotics.blog/*
git add diffable/*
git commit -m "Automatic Update `date -u`"
git push -u origin master
