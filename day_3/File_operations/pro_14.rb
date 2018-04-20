require 'csv'
	sum=0
arr = []
   CSV.foreach("text.csv") do |a|
	#puts a
arr = a
print arr

# print a[2]
    #sum=sum+a[2].to_i
    #puts " "
   end
   puts sum

