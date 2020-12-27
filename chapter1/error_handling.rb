# 自分で例外を発生させられる
# raise ZeroDivisionError, "hello, error!"

# 文字列だけを渡すとどうなる
# raise 'runtime error hello!'

# 自分で例外クラスを作って発生させてみる
class NoMoneyError < StandardError ; end
# raise NoMoneyError, 'not enough money!'

#begin rescue ensure end
class Human
	;
end

begin
	raise NoMoneyError, 'msg'
	10 / 0
rescue ZeroDivisionError => exception
	puts("#{exception.class}(#{exception.message})")
rescue => exception
	puts("#{exception.class}(#{exception.message})")
ensure
	puts('yamete!')
end