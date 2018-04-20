aFile=File.open("text.txt", "a+")
# r r+ w w+ a a+
#File.open("text.txt", r)
if aFile
	aFile.syswrite("-------dasf--MANIK------")
	
else
	puts "Error"
end
aFile.close()