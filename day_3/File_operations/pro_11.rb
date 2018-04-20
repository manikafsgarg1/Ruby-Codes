require 'csv'
aFile = File.new("text.csv", "r+")
if aFile
   a = "Manik,Garg,1111"
   b = "mANIK;gARG;1111"
   arr = CSV.parse(a)
   	puts a
   	print arr
   arr2=CSV.parse(b,col_sep: ';')
   puts b
   print arr2
   
else
   puts "Unable to open file!"
end