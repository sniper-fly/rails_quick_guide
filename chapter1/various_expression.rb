### ニルガード
class Hoge
	def initialize
		# @children = [1, 2, 3]
	end

	def children_array
		@children ||= []
	end
end

# hoge = Hoge.new
# p(hoge.children_array.size)

### ボッチ演算子
object = nil
# object.name
# p(object&.name)

# ％記法
ary1 = ['apple', 'banana', 'orange']
ary2 = %w(elen mikasa arumin)
# p(ary1)
# p(ary2)

ary3 = %i(gabi falco hoge)
# p(ary3)

# map

class User
	attr_accessor :name
	def initialize(name)
		@name = name
	end
end

user1 = User.new('elen')
user2 = User.new('mikasa')
user3 = User.new('arumin')
users = [user1, user2, user3]

# 一つ目の方法
# names = []
# users.each do |user|
# 	names << user.name
# end

#二つ目
# names = users.map do |user|
# 	user.name
# end

# 三つ目
# names = users.map {|user| user.name}

# 四つ目
names = users.map(&:name)

p(names)