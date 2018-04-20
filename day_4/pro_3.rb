#module for reading data from a csv file
module Read
  require 'csv'
  arr = File.read("product.csv")
  # print arr
  arr2 = CSV.parse(arr)
  # print arr2[0]
  # puts " "
  # print arr[4]
  arr2.each do |row|
    if row[1] == 'keyboard'
      row[1] = "KEYBOARD"
    end
    CSV.open("product.csv", "wb") do |csv|
      csv << row
    end
  end

end