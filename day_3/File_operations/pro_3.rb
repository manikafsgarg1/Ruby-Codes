aFile=File.open("text.txt", "w+")
# r r+ w w+ a a+
#File.open("text.txt", r)
if aFile
	aFile.syswrite("---------MANIK------")
else
	puts "Error"
end
aFile.close()