aFile=File.new("text.txt", "r")
# r r+ w w+ a a+
#File.open("text.txt", r)
if aFile
	content = aFile.sysread(100)
	puts content
else
	puts "Error"
end
aFile.close()