require 'net/http'
require 'json'
require 'time'

uri1= URI('http://challenge.code2040.org/api/dating')
token = '3db240e50e3f2cc6693ab397176a3ae5'
uri2 = URI('http://challenge.code2040.org/api/dating/validate')
body1 = { token: token }.to_json
req1 = Net::HTTP::Post.new(uri1, initheader = {'Content-Type' =>'application/json'})
req1.body = body1
response1 = Net::HTTP.new(uri1.host, uri1.port).start { |http| http.request(req1) }
time = JSON.parse(response1.body)["datestamp"]
interval = JSON.parse(response1.body)["interval"]
timeIso = Time.iso8601(time)
timeAdd = timeIso + interval
datestamp = timeAdd.iso8601
body2 ={ token: token, datestamp: datestamp }.to_json
req2 = Net::HTTP::Post.new(uri2, initheader = {'Content-Type' =>'application/json'})
req2.body = body2
response2 = Net::HTTP.new(uri2.host, uri2.port).start { |http| http.request(req2) }
printf(datestamp)