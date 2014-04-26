class DeliveryTime

def initialize
	stamp(Time.new)
end

def stamp(time)
	delivery_limit = time + 3000
	delivery_limit
end

end