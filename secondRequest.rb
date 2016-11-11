require 'net/http'
require 'json'
#require 'uri'

uri1= URI('http://challenge.code2040.org/api/haystack')
token = '3db240e50e3f2cc6693ab397176a3ae5'
uri2 = URI('http://challenge.code2040.org/api/haystack/validate')
body1 = { token: token }.to_json
req1 = Net::HTTP::Post.new(uri1, initheader = {'Content-Type' =>'application/json'})
req1.body = body1
response1 = Net::HTTP.new(uri1.host, uri1.port).start { |http| http.request(req1) }
x= JSON.parse(response1.body)["needle"]
y = JSON.parse(response1.body)["haystack"]
$i = 0
z = y.length
while $i < z do
  if x == "#{y[$i]}"
    #puts "x is found @ #$i"
    needle = $i
    #puts("needle has", needle)

  end
  //#puts("#{y[$i]}")

  $i +=1


end

body2 ={ token: token, needle: needle }.to_json
req2 = Net::HTTP::Post.new(uri2, initheader = {'Content-Type' =>'application/json'})
req2.body = body2
response2 = Net::HTTP.new(uri2.host, uri2.port).start { |http| http.request(req2) }