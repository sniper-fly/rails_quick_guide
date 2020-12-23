class User
	def initialize(family_name, given_name, age)
		@family_name = family_name
		@given_name = given_name
		@age = age
	end

	def show_info(full = true, with_age = true)
		if (full)
			info_to_puts = "#{@family_name}#{@given_name}"
		else
			info_to_puts = "#{@given_name}"
		end
		info_to_puts << "(#{@age})" if (with_age)
		puts(info_to_puts)
	end
end

user = User.new("urashima ", "taro", 100)
user.show_info(true, false)