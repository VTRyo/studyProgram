result = ["abc", "123"].map{|text| text.reverse} 
p result

result2 = ["abc", "123"].map(&:reverse)
p result2
