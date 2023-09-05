# P115~

# Range 範囲オブジェクト
puts (1..5).class #=> Range

# includeメソッド 引数の値が範囲に含まれるか判定できる
range = 1..5 # 1以上5以下
p range.include?(0) # =>false
p range.include?(1.5) #=>true
p range.include?(5) #=>true

range = 1...5 # ...の場合は、1以上5未満
p range.include? 5 #=>false

a = [1,2,3,4,5]
p a[1..3] #=> [2,3,4]

# n以上m以下、n以上m未満の判定をする場合は不等号より範囲オブジェクトの方がシンブルに書ける
# 不等号の場合
def seinen?(age)
  20 <= age && age < 150
end
p seinen?(-1)
p seinen?(0)
p seinen?(99)
p seinen?(150)

def seinen?(age)
  (20...100).include?(age)
end
p seinen?(-1)
p seinen?(0)
p seinen?(99)
p seinen?(150)

age = 50
if (0..50).include?(age)
  puts "0~50"
elsif (51..100).include?(age)
  puts "51~100"
else
  puts "それ以外"
end

def charge(age)
  case age
  when 0..5
    0
  when 6..12
    300
  when 13..20
    600
  else
    1000
  end
end

puts charge(20)

# 値が連続する配列
p (1..5).to_a #=> [1,2,3,4,5]
p ("bad".."bag").to_a #=> ["bad", "bae", "baf", "bag"]

