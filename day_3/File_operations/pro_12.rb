require 'csv'
aFile = File.new("text.csv", "r+")
if aFile
   a = File.read("text.csv")
   print a
puts " "
ab=CSV.parse(a)
   	print ab
print ab[0][0]
print " ------------"
print ab[1][0]
   
else
   puts "Unable to open file!"
end
