require 'rest-client'
require 'json'

HOST = "eu.battle.net"
RELM = "tarren%20mill"

URL = HOST + "/api/wow/auction/data/" + RELM

puts "Requesting data point @ #{URL}"
data_point = JSON::parse(RestClient.get(URL))

data_url =  data_point["files"].first["url"]
result = JSON::parse(RestClient.get(data_url))

puts result["horde"].first