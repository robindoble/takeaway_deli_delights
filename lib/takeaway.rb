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
		build_order(choice.downcase.to_sym)
	end

	def build_order(choice)
		if @menu.keys.include?(choice) 
			order << choice
			# quantity_choser
		else
			line_break
			"Choose again"	
		end	
	end

end

