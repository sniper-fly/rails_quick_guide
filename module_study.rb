module Chatting
	def chat
		puts("hello")
	end
end

module Weeping
	def weep
		puts("oohhhhhh")
	end
end

class Human
	include Chatting
	include Weeping
end

human = Human.new
human.weep