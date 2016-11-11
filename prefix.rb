require 'net/http'
require 'json'

uri1= URI('http://challenge.code2040.org/api/prefix')
token = '3db240e50e3f2cc6693ab397176a3ae5'
uri2 = URI('http://challenge.code2040.org/api/prefix/validate')
body1 = { token: token }.to_json
req1 = Net::HTTP::Post.new(uri1, initheader = {'Content-Type' =>'application/json'})
req1.body = body1
response1 = Net::HTTP.new(uri1.host, uri1.port).start { |http| http.request(req1) }
a = JSON.parse(response1.body)["prefix"]
b = JSON.parse(response1.body)["array"]
$i = 0
$in = 0
z = b.length
newArray = Array.new
while $i < z do
  if "#{b[$i]}".start_with?(a)
    #a.delete($ind)
    puts("starts with prefix")
  else
    newArray[$in] = b[$i]
    $in +=1
  end
  $i +=1

end
#puts(newArray)
#puts "#{a[$i]}".start_with?(b)  #=> true
body2 ={ token: token, array: newArray }.to_json
req2 = Net::HTTP::Post.new(uri2, initheader = {'Content-Type' =>'application/json'})
req2.body = body2
response2 = Net::HTTP.new(uri2.host, uri2.port).start { |http| http.request(req2) }
