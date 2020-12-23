class User
	def initialize(family_name, given_name, age)
		@family_name = family_name
		@given_name = given_name
		@age = age
	end

	def show_info(full: true, with_age:)
		info_to_show = if (full)
			"#{@family_name} #{@given_name}"
		else
			@given_name
		end
		info_to_show << "(#{@age})" if (with_age)
		puts(info_to_show)
	end
end

user = User.new("urashima", "taro", 100)
user.show_info(full: false, with_age: true)