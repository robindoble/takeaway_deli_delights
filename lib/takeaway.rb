class Takeaway
	# def add_to_menu(item)
	# 	self.new(item)
	# end
end

class MenuItem < Takeaway
	attr_reader :name
	
	def initialize(name)
		@name=name
		# @price=price
	end

end



# class Takeaway

# 	def initialize(item,price)
# 		@item=item
# 		@price=price
# 	end

# end