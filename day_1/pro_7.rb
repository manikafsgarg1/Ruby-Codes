#redefine method
def abc
	yield
end

abc {puts "Hello" }