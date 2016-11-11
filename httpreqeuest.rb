class HTTPREQEUEST
  require 'net/http'
  require 'json'
  uri1= URI("http://challenge.code2040.org/api/reverse”);


  token = "3db240e50e3f2cc6693ab397176a3ae5";
  body1 = { token: token }.to_json;


  req1 = Net::HTTP::Post.new(uri1, initheader = {'Content-Type' =>'application/json'})
  req1.body = body
  x= response1.body
  response1 = Net::HTTP.new(uri1.host, uri1.port).start { |http| http.request(req1) }
  body2 ={ token: token, string: x.reverse }.to_json
  req2 = Net::HTTP::Post.new(uri2, initheader = {'Content-Type' =>'application/json'})
  req2.body = body2
  response2 = Net::HTTP.new(uri2.host, uri2.port).start { |http| http.request(req2) }
end