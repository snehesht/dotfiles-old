# Fetch Public IP information
ipinfo(){
	local tmp=$(curl -s http://ip-api.com/json/$@)
	echo $tmp | pp_json
}
