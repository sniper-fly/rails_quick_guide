class Priced_object
	def total_price
		price * Tax.rate
	end

	def price
		raise NotImplementedError
	end

	def putexample
		puts("success")
	end
end

class Product < Priced_object
	attr_accessor :price
end

class Orderd_item < Priced_object
	attr_accessor :unit_price, :volume

	def price
		unit_price * volume
	end
end

# item = Priced_object.new
# good = Orderd_item.new
# good.unit_price = 100
# good.volume = 4
# puts(good.price)

class Book
	def title
		puts('book title')
	end
end

class Magazine < Book
	def title
		super
		puts('magazine title')
	end
end

class Jump < Magazine
	def title
		super
		super
		puts('syounen jump')
	end
end

syounen = Jump.new
syounen.title