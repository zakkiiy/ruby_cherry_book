# ~P31

# 全てがオブジェクトであり、それぞれのオブジェクトはクラスに属する。
# 各オブジェクトのクラスは、そのオブジェクトの振る舞いや属性を定義する。

puts true.to_s
#=> true

puts 100.class
#=> Integer

puts 100.0.class
#=> Float

puts true.to_s.class
#=> String

puts nil.to_s
#=> "" 空文字列を指し、文字数が0の文字列
#=> 空白文字とは違い、何もない状態を表す。空白文字はスペースやタブなどの表示される空白文字を表す。

# メソッド

# 引数の()を省略できる
puts 10.to_s 16

# リテラル
# 数値の123や文字列の"Hello"などお、ソースコードに直接埋め込むことができる値のことをリテラルという
# 配列やハッシュも含まれる

# 多重代入 irbでないと上手くいかない？
# puts c, d = 10
# puts e, f, g = 100,200

# 文字列の比較
puts 'ruby' != 'perl'
#=> true
puts 'ruby' != 'ruby'
#=> false

# バイト値で比較
puts 'abcc' < 'abcd'
#=> true

# バイト値の確認
p 'a'.bytes
p 'aiu'.bytes
p 'あ'.bytes

# 数値

n = 1
puts -n
#=> -1

puts 1/2
#=> 0 整数の場合は(0.5)ではない

n = 1
puts n.to_f / 2
#=> 0.5

puts 2**3
#=> 8 べき乗

# 数値と文字列は暗黙的に変換されない。
# to_i や to_fをメソッドを使用して明示的に変換する必要がある。
puts 1 + '10'.to_i
#=> 11
puts 10 + '10'.to_f
#=> 20.0

num = 3
puts "この番号は" + num.to_s
#=> この番号は3

#{}を使った場合は、自動的に to_sメソッド が呼ばれている。
puts "この番号は#{num}"
#=> この番号は3