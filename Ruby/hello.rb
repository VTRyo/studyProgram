
# Hello World

puts 'hello'
puts %(hello)
puts 3 * 5

# hash

scores = {"taguchi" => 200, "inaba" => 400}
scores = {taguchi: 200, inaba: 400}

p scores[:taguchi]
p scores[:inaba]
p scores
p scores.values
p scores.has_key?(:ianba)

# 配列
colors = ["red", "blue", "yellow"]

p colors
p colors[0]
p colors[-1]
p colors[0..2]
p colors[0...3]
colors[0] = "pink"
p colors



# 条件分岐
print "input your score: "
score = gets.to_i

if score > 80
    puts "great"
elsif score > 60
    puts "good"
else
    puts "so so..."
end

# 単純なif文なら後ろに書くこともできる
score = gets.to_i
puts "great" if score > 80



# case

signal = gets.chomp
case signal
when "red"
    puts "stop"
when "green", "blue"
    puts "go"
when "yellow"
    puts "caution"
else
    puts "wrong signal"
end



# while

i = 0
while i < 10 do
    puts "#{i} :hello"
    i += 1
end


#times

10.times do |i|
    puts "#{i} :hello"
end


# 一行で書くこともできる do endが波括弧になる
10.times { |i| puts "#{i} :hello" }



# for each

for i in 15..20 do
    p i
end


for color in ["red", "green"] do
    p color
end

for name, score in {taguchi:200, inaba:400} do
    puts "#{name}: #{score}"
end

#each 

(15..20).each do |i|
    p i
end


["red", "green"].each do |color|
    p color
end

{taguchi:200, inaba:400}.each do |name, score|
    puts "#{name}: #{score}"
end



# loop break next

i = 0
loop do
    p i
    i += 1
end


# break
10.times do |i|
    if i == 7 
        #break
        next
end
p i
end


