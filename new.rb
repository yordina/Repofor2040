y =  ["wlcthkgz", "vzyungte", "gmdwprfj", "mpnxadhu", "wzqcurjy", "fxytblag", "kdzurmqy", "heagbcfm", "vsxygebc", "pubhkorx", "wtijnrvz", "rjqlgcuo", "mufgodaw", "veotadqx", "mquvkhtf", "bwpyegua", "cehtfjga", "uysvwhcr", "syxnqtom", "ogpvxduj"]
x = "mquvkhtf"
$i = 0
z = y.length
#puts(z)
while $i < z do
  if x == "#{y[$i]}"
    #puts "x is found @ #$i"
    needle = $i
    #puts("needle has", needle)

   end
    //#puts("#{y[$i]}")

    $i +=1


end
$i = 0

#puts(z)

puts(needle)
$ind = 0
$h = 0
#newArray = Array.new(z)
a = ["hiloqwtd", "dwrqcgvh", "pmdkpsri", "htkavnfm", "ocbqrkdn", "pmdkicrh", "egvsjdru", "pmdkcafw", "pmdkhwmg", "pmdklfik", "zeicnlsg", "pmdkmlzk", "egmlrfpx", "cfzaxije", "imblcreg", "camnywku", "kfjyeixp", "gbkntile", "hmtnpdwe", "kivqfszh"]
b = "pmdk"
z = a.length
newArray = Array.new
#puts(z)
while $ind < z do
  if "#{a[$ind]}".start_with?(b)
       #a.delete($ind)
      #puts("#{a[$ind]}")
  else
    newArray[$h] = a[$ind]
    $h +=1
  end
  $ind +=1

end
puts(newArray)
#puts "#{a[$i]}".start_with?(b)  #=> true

