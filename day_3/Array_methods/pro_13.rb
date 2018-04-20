arr = [1, 2, 3, 4, 5]
arr.delete_if{|a| a>2}
puts arr
arr.push(3,4,5)
arr.keep_if{|a| a>2}
puts arr