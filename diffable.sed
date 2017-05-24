s|(<script src='https://r-login.wordpress.com/remote-login.php).*(</script>)|\1##Scriptpath##\2|g
s|crt-[^'"]+|crt-##DivID##|g
s|('like-post-)[^']+|\1##ID##|g
s|(value=(["']))[[:digit:]]+\2|\1##Number##\2|g
s|(value=(\\?["']))[a-f[:digit:]]+\2|\1##HexNum##\2|g
s|(wpnonce=)[a-f[:digit:]]+|\1##HexNum##|g
s|Join [0-9,]+ other followers|Join ##Followers## other followers|g
s|(_stq.push\(\['extra', \{'crypt':).*('\}\]\);)|\1##Crypt##\2q|g
s|^.*generated.*seconds.*$|##GeneratedSeconds##|g
s|^.*batcache.*seconds.*$|##Batcache##|g
s|(obj_id=)[a-f0-9-]+'|\1##OBJ_ID##'|g
