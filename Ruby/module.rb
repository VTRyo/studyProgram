# method,classをまとめる
# instanceの作成や継承はできない

# 名前空間 誰かが作成したmethodやライブラリとぶつからないよう、自分だけの名前空間を作る


def movie_encode
end

def movie_export
end

# modulの1文字目は大文字
module Movie
    
    VERSION = 1.1
    
    def self.encode
        puts "encoding..."
    end
    
    def self.export
        puts "exporting..."
    end
    
end

Movie.encode
Movie.export
p Movie::VERSION


# ミックスイン

module Debug
# selfをつけずにインスタンスメソッドとして使用することで、他のクラスのインスタンスメソッドとして使えるようになる
    def info
        puts "#{self.class} degug info..."
    end
end

class Player
    include Debug
    
    
end

class Monster
    include Debug
end

Player.new.info
Monster.new.info



