aFile = File.new("text.txt", "r+")
if aFile
   IO.foreach(aFile) {|a| puts a}
else
   puts "Unable to open file!"
end