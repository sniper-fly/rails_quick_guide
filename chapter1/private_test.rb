class User
	def initialize(money)
		@money = money
	end

	def is_billionair?
		@money >= 1000000
	end

	# private
	# def money
	# 	@money
	# end
end

user = User.new(1000)
puts(user.is_billionair?)
# puts(user.money)