a="MANIK"
puts a.casecmp?("MANIK") #true
puts a.casecmp?("MAN")  #false
puts a.casecmp?("MANIKa")   #f
puts a.casecmp?("manik")   #t
puts a.casecmp?("MANIK ")   #f