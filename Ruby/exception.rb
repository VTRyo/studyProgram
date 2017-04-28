# 例外
# 発生しそうな箇所をbegin endでくくる
=begin
x = gets.chomp.to_i

begin
p 100 / x
rescue => ex
    p ex.message
    p ex.class
    puts "stopped!"
ensure
puts "-- END --"
end
=end

# 自身で例外クラスを作ることもできる
# 今回は中身がいらないのですぐにendで閉じる
class MyError < StandardError; end
    
x = gets.chomp.to_i

begin
    if x == 3
        raise MyError
    end
p 100 / x
rescue MyError
    puts "not 3"
rescue => ex
    p ex.message
    p ex.class
    puts "stopped!"
ensure
    puts "-- END --"
end