class User
	def name
		message = if (10 > 3)
			"success"
		else
			"failure"
		end
		puts(message)
	end
end

hoge = [1, 2, 3]

hoge.each do |element|
	puts(element)
end

hoge << [4, 5, 6]
hoge.each do |element|
	puts(element)
end