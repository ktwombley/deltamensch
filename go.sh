wget https://patribotics.blog/sitemap.xml --output-document sitemap.xml -nv
cat sitemap.xml | egrep -o "https?://[^<]+" | wget -nv --mirror --wait .5 --random-wait --no-parent --domains patribotics.blog,patribotics.files.wordpress.com,patribotics.wordpress.com --reject-regex '.*\?.*|/feed/$|/amp/$|.*\"https:.*|.*/category/.*|.*/tag/.*|.jpeg$|.jpg$|.png$|.gif$' -R jpeg,jpg,png,gif -i -

