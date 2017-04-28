# class
# instance変数はclass内ならアクセスできる

# アクセス権
# public
# protected
# private: レシーバーを指定できない。クラスの中で呼び出すことができる


class User
    attr_accessor :name
    # getterだけ作りたい場合はattr_reader :name
    # setter: name=(value)
    # getter: name　というメソッドを作ってくれる
    
  #クラス変数 インスタンスの数を保持させてみる    
     @@count = 0
  # 定数
     VERSION = 1.1
     
    def initialize(name)
        @@count += 1
        @name = name
    end
   
  # class method
    
    def self.info 
        puts "#{VERSION}: User class, #{@@count} instances"
    end

    def sayHi
        #self メソッド内で使える
        # self.name -> @name
        # puts "hi i am #{@name}"
        #  puts "hi i am #{self.name}" # 書き換えが可能
        puts "hi i am #{name}"      # 意味が曖昧にならなければselfを省略可能
        sayPrivate
        # self.sayPrivate レシーバーを取得できないのでselfは必ず省略すること
    end
    
    private 
        def sayPrivate
            puts "private"
        end
end

User.new("tom").sayHi
=begin
tom = User.new("tom")

tom.name = "tom Jr."
p tom.name
tom.sayHi # メソッドを受けっている側をレシーバーという


bob = User.new("bob")
bob.sayHi

=end


User.info
# ::で表示も可能
p User::VERSION

# クラスの継承
# User 親クラス、Super class
# AdminUser 子クラス、Sub class

class AdminUser < User
=begin
    def sayHello
        puts "Hello from #{name}"
        sayPrivate
        
    end
=end    
    private 
        def sayPrivate
            puts "private from Admin"
        end
=begin        
    # オーバーライド
    def sayHi
        #self メソッド内で使える
        # self.name -> @name
        # puts "hi i am #{@name}"
        #  puts "hi i am #{self.name}" # 書き換えが可能
        puts "hi from admin #{name}"      # 意味が曖昧にならなければselfを省略可能
    end
=end
end

tom = AdminUser.new("tom")
#tom.sayHi
tom.sayHi