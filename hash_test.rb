options = {font_size: 100, color: 'red'}

options[:font_family] = "hoge"

options.each do |key, value|
	print("key ", key, " ", "\n", "value ", value)
	puts()
end