
require 'csv'
aFile = File.new("text.csv", "r+")
if aFile
   a = CSV.read("text.csv")
   	print a
   
else
   puts "Unable to open file!"
end