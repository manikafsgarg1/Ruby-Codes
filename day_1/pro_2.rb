5.times {puts "Hello 2"}
puts "I am running " + `ruby --version`	
m = "Manik"
g = " Garg"
a=21
puts m+g
m.concat(g)
puts m
puts "Manik #{a}"
puts "Manik#{g}"
#getting input value during runtime..
b="#{ARGV[0]}"
puts b