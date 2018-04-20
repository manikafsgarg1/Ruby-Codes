
require 'csv'
aFile = File.new("text.csv", "r+")
if aFile
   CSV.foreach("text.csv") do |a|
    print a
    puts " "
   end
else
   puts "Unable to open file!"
end