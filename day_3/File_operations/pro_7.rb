aFile = File.new("text.txt", "r+")
if aFile
   arr=IO.readlines(aFile)
   print arr
else
   puts "Unable to open file!"
end