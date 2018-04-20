puts "hello".gsub(/[aeiou]/, '*')                
puts "hello".gsub(/([aeiou])/, '<\1>')             
puts "hello".gsub(/./) {|s| s.ord.to_s + ' '}     
puts "hello".gsub(/(?<foo>[aeiou])/, '{\k<foo>}') 
puts 'hello'.gsub(/[eo]/, 'e' => 3, 'o' => '*')