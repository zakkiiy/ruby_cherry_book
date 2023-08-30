# P31 ~ P41
data = nil
if data
  puts 'データがあります'
else
  puts 'データがありません'
end

# !演算子 真偽値を反転する
t1 = false
puts !t1
#=> true

# Rubyのif文は最後に評価された式を戻り値として返す。
# ifが戻り値を返すという性質を利用して、戻り値を変数に代入できる
country = 'japan'
greeting =
  if country == 'japan'
    'こんにちは'
  elsif country == 'us'
    'Hello'
  elsif country == 'italy'
    'Ciao'
  else
    '???'
  end
puts greeting
#=> こんにちは
# 合致しない場合はnilが変数に入る。

# 後置if
point = 7
day = 1
point *= 5 if day == 1
puts point
#=> 35

# P42 ~ P

# 最後に評価された式がメソッドの戻り値となる。
# returnはメソッドを途中で抜ける場合に使われることが多い

def greet(country)
  return 'countryを入力してください' if country.nil?

  if country == 'japan'
    'こんにちは'
  else
    'hello'
  end
end
puts greet(nil)
#=> countryを入力してください
puts greet('japan')
#=> こんにちは

# 引数があっても()を省略できるが、引数がある場合は()は省略しないほうが多い。
