# P61~67
# unless文
# ifの反対の意味を持つ。ifで否定の条件を書いているときはunlessに置き換えられる。

status = 'error'
if status != 'ok'
  puts '何か異常があります'
end
#=> 何か異常があります

status = 'ok'
# if同様変数に入れることも可能
messages =
unless status == 'ok'
  '何か異常があります'
else
  '異常はありません'
end
puts messages
#=> 異常はありません
# unlessに elsif はないらしい

user = nil
if !user
  puts 'nilです'
end

user = nil
if user.nil?
  puts 'nilです'
end

# case
# 一つの式やオブジェクトを複数の値と比較する場合はcase文を使うのが良い
# 変数に入れることも可能
country = 'italy'
aiu =
case country
when 'japan'
  'こんにちは'
when 'us'
  'hello'
when 'italy'
  'Ciao'
else
  '???'
end
puts aiu

# パターンマッチ 11章で説明あり。
case [0, 1, 2]
  in [n,1,2]
  puts "n=#{n}"
else
  puts 'not mathced'
end

# 三項演算子 シンプルなifならこっちを使うべき
n = 11
puts n > 10 ? '10より大きい' : '10以下'
#=> 10より大きい
# 変数も使用可能
num = n > 10 ? '10より大きい' : '10以下'
puts num
#=> 10より大きい

