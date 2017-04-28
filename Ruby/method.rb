# method
# ()は省略できる
# デフォルト値を引数に対して設定することもできる


def sayHi(name = "tom")
    puts "Hi! #{name}"
end

sayHi("inaba")
sayHi "takataka"

sayHi

# methodを戻り値にしたい場合、putsを取る
# 明示的にしたい場合はreturn

def sayHi(name = "tom")
   return "Hi! #{name}"
end

p sayHi

# method内で定義した変数は外では使用できない
=begin
def sayHi(name = "tom")
    score = 80
    puts "Hi! #{name}"
end

p score

=end