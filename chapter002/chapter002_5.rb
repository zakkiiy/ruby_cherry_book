# P68~73
# メソッド定義について
# デフォルト引数 引数の過不足があるとエラーが出る。

def default_args(a, b, c = 0, d = 0)
  puts "a=#{a}, b=#{b}, b=#{c}, b=#{d}"
end
default_args(1,2)
#=> a=1, b=2, b=0, b=0
default_args(1,2,3)
#=> a=1, b=2, b=3, b=0
default_args(1,2,3,4)
#=> a=1, b=2, b=3, b=4

# 動的に変わる値やメソッドの戻り値をデフォルト値に指定できる
def foo(time = Time.now, message = bar)
  puts "time: #{time}, message: #{message}"
end

def bar
  'これからBARに行きます。'
end

foo()
#=> time: 2023-09-01 07:30:06 +0900, message: これからBARに行きます。

def point(x,y = x)
  puts "x=#{x}, y=#{y}"
end
point(3)
#=> x=3, y=3
point(3, 10)
#=> x=3, y=10

# ?で終わるメソッド 真偽値を返すメソッド
# 述語メソッドという。

# empty? から文字列であればtrue, そうでなければfalse
puts ''.empty? #=> true
puts 'abc'.empty? #=> false

# 引数の文字列が含まれていたらtrue
puts 'watch'.include?('at') #=> true
puts 'watch'.include?('in') #=> false

# 奇数ならtrue, 偶数ならfalse
puts 1.odd? #=> true
puts 2.odd? #=> false

puts 1.even? #=> false
puts 2.even? #=> true

puts nil.nil? #=> true
puts 'abc'.nil? #=> false
puts 1.nil? #=> false

### ! で終わるメソッド 破壊的メソッドとは言わないらしい
# upcaseメソッドは大文字を返すが、呼び出した文字列自身は変化しない。upcase!メソッドは呼び出し元の文字列自身も変更する
a = 'ruby'
puts a.upcase #=> RUBY
puts a #=> ruby

puts a.upcase! #=> RUBY
puts a #=> RUBY

# concatには!はついてはないが破壊的。破壊的なメソッド全てに!がついているわけではない。

# エンドレスメソッド定義（１行メソッド）
def greet = 'Hello'
puts greet #=> Hello

def add(a,b) = a+b
puts add(1,2)
#=> 3