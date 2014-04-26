class T

	attr_reader :menu	
	attr_reader :order

	def order
		@order ||= []
	end	

	def initialize
		@menu = {soup: 2, fish: 5, meat: 5, salad: 3, pizza: 4}
		# @order = [["1",:soup], ["1",:meat],["1",:salad],["1",:pizza]]
		# show_menu
	end

	def line_break
		puts "########################################"
	end

	def options_menu
		puts "Hello, welcome to FoodDirect online, please choose an option"
		puts "1. Start/Add to an order"
		puts "2. View order"
		puts "3. Complete order by checking total"
		puts "4. Exit"
		line_break
	end

	def load
		options_menu
		option = gets.chomp
		case option
			when "1"
				add_order
			when "2"
				view_order
			when "3"
				complete_order
			when "4"
				""	
		end
	end

	def view_order
			puts "You current order is"	
			order.each {|quant,item| puts "#{quant} x #{item}, @£#{menu[item]}"}
		line_break
		load
	end

	def food_menu
		"The menu is"
		menu.each {|item,price| puts "#{item} £#{price}"}
		line_break
	end

	def add_order
		food_menu
		puts "Please choose a menu item"
		choice = gets.chomp.to_sym		
		# order_checker(choice) 
		puts "Please add desired quantity"
		quantity = gets.chomp
		order_builder(quantity,choice)
		load
	end

	def check_total
		# puts order.inspect
		view_order
		puts "Please add the subtotal and hit enter to complete order"
		# puts menu
		user_total = gets.chomp.to_i
		real_total = order.inject(0) {|acc,item| (item[0].to_i * menu[item[1]]) + acc }
		# puts real_total
		user_total == real_total
	end

	def complete_order
		if check_total
			""
		else
			raise "That is the wrong amount, sorry!"
		end

	end

	# def order_checker(choice)
	# 	menu.keys.include?(choice)	
	# end
	
	def order_builder(quantity, choice)
		order << [quantity,choice]
		# puts order.inspect
		# show_menu
	end




end

