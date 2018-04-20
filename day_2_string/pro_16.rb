a="MANIK\n\n\n\n\n\nGARG"
puts a.each_line(''){|s| p s}
puts a.each_line('A'){|s| p s}
puts a.each_line('G'){|s| p s}
puts a.each_line{|s| p s}