class Takeaway

	attr_reader :menu	
	attr_reader :order

	def order
		@order ||= []
	end	

	def initialize
		@menu = {soup: 2, fish: 5, meat: 5, salad: 3, pizza: 4}
		# show_menu
	end

	def line_break
		puts "########################################"
	end

	def show_menu
		line_break
		@menu.each {|item,price| puts "#{item} £#{price}"}
		line_break
		puts "Hello, welcome to FoodDirect online, please choose a menu item?"
		choice=gets.chomp
		order_checker(choice.downcase.to_sym)
	end

	def order_checker(choice)
		if @menu.keys.include?(choice) 
			quantity_chooser(choice)
		else
			# line_break
			# puts "Choose again please"	
		end	
	end
	
	def quantity_chooser(choice)
		# line_break
		# puts "Please choose your desired quantity"
		quantity = gets.chomp
		order << [quantity,choice]
	end

end

