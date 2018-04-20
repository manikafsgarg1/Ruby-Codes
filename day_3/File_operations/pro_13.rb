require 'csv'
   a = "Manik,Garg,1111"
   b = "mANIK;gARG;1111"
   arr = CSV.parse(a)
   	puts a
   	print arr
   arr2=CSV.parse(b,col_sep: ';')
   puts b
   print arr2
   puts " "
arr << arr2
puts arr
print arr
   CSV.open("text.csv","a+") do |csv|
   	csv<<arr[0]
   	csv<<arr2[0]
      
   end
