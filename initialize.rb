class User
	attr_reader :name, :address, :email
	def initialize(name, address, email)
		@name = name
		@address = address
		@email = email
	end
end

user = User.new("musuka", "rapyuta", "musuka.com")
puts(user.name, user.address, user.email)