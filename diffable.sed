s|(<script src='https://r-login.wordpress.com/remote-login.php).*(</script>)|\1##Scriptpath##\2|g
s|crt-[^'"]+|crt-##DivID##|g
s|('like-post-)[^']+|\1##ID##|g
s|(value=")[\d]+|\1##Number##|g
s|Join [\d,]+ other followers|Join ##Followers## other followers|g
s|(_stq.push\(\['extra', \{'crypt':).*('\}\]\);)|\1##Crypt##\2q|g
s|^.*generated.*seconds.*$|##GeneratedSeconds##|g
s|^.*batcache.*seconds.*$|##Batcache##|g

