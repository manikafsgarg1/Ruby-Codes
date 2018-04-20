require 'csv'
#while true
	puts """ENTER CHOICE \n 1. Add new product \n 
	2. Change name of product by giving name \n 
	3. Change price of product by giving id \n 
	4. Get total products with money \n 
	5. Fetch row with the given id"""
	
	a = gets.to_i
	
	case a
	when 1
       puts "enter id of the product"
       id_ = gets.to_i
       puts "enter name of the product"
       name_ = gets.chomp
       puts "enter quantity of the product"
       quan = gets.to_i
       puts "enter price of the product"
       pricee = gets.to_i
       arr = Array.new()
       arr<<id_
       arr<<name_ 
       arr<<quan
       arr<<pricee
       print arr
       CSV.open("product.csv","a+") do |csv|
           csv<<arr
       end
	when 2
		puts "Enter name to change"
		name_ = gets.chomp
		puts "Enter new name"
		new_name = gets.chomp
		CSV.open("product.csv","r+") do |csv|
		    CSV.foreach("product.csv") do |ab|
			   if ab[1].chomp == name_
				   puts "NAME FOUND"
				   ab[1] = new_name
				   
			   end
			   abb = ab.join(',')
			   arr = CSV.parse(abb)
			   puts arr[0]
			   csv << arr[0]
		    end
	    end
	when 3
		puts "Enter id of the product"
		id_ = gets.to_i
		puts "Enter new price"
		new_price = gets.to_i
		CSV.open("product.csv","r+") do |csv|
		    CSV.foreach("product.csv") do |ab|
			   if ab[0].to_i == id_
				   puts "ID FOUND"
				   ab[3] = new_price
			   end
			   abb = ab.join(',')
			   arr = CSV.parse(abb)
			   puts arr[0]
			   csv << arr[0]
		    end
	    end
	when 4
		products = 0
		money = 0
		CSV.open("product.csv","r") do |csv|
		    CSV.foreach("product.csv") do |ab|
			   products = products + ab[2].to_i
			   money = money + (ab[2].to_i*ab[3].to_i)
		    end
		    puts "TOTAL PRODUCTS ARE #{products}"
		    puts "TOTAL MONEY IS #{money}"
	    end
	when 5
		puts "1. By Name \n 2. By Id"
		cho = gets.to_i
		case cho
		when 1
		 	puts "Enter name"
			name_ = gets.chomp
			CSV.open("product.csv","r") do |csv|
			    CSV.foreach("product.csv") do |ab|
				   if ab[1] == name_
					   puts "NAME FOUND"
					   print ab 
					   break
				   end
			    end
		    end
		when 2
			puts "Enter ID"
			id_ = gets.to_i
			CSV.open("product.csv","r") do |csv|
			    CSV.foreach("product.csv") do |ab|
				   if ab[0].to_i == id_
					   puts "ID FOUND"
					   print ab 
					   break
				   end
			    end
		    end
			   else
				   puts "WRONG VALUE"
			end
		else
			puts "INPUTED WRONG VALUE"
		end
