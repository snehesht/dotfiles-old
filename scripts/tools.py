#!/usr/bin/python
import requests
import sys
import json


def ipv4():
	res = requests.get('http://v4.ipv6-test.com/api/myip.php')
	ip = res.text
	print(ip)

def ipv6():
	res = requests.get("http://v6.ipv6-test.com/api/myip.php")
	ip = res.text
	print(ip)

def india_time():
	pass

def weather():
	# Weather in Cincinnati OH
	req = requests.get('''https://query.yahooapis.com/v1/public/yql?q=select%20item.condition%20from%20weather.forecast%20where%20woeid%20%3D%202380358&format=json&env=store%3A%2F%2Fdatatables.org%2Falltableswithkeys''')
	res = json.loads(req.text)
	temp = (int(res['query']['results']['channel']['item']['condition']['temp']) - 32)*(5/9)
	print(str(int(temp))+"°C",",",res['query']['results']['channel']['item']['condition']['text'])

if __name__=="__main__":
	# Usage
	#print("Usage ...")
	#print("tools.py {ip4 | ip6 | temp}")

	# This map holds a map from args to function
	fun_map = {
	"ip4":ipv4,
	"ip6":ipv6,
	"temp":weather
	}
	# Get the function that should be executed
	cmd = sys.argv[1]
	if cmd in fun_map:
		fun_map[cmd]()
