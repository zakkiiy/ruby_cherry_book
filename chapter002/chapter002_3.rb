# P51~60

# %記法で、文字列を作成する
# シングルクオートで囲んだことと同じ
puts %q!He said, "Don't speak."!

# ダブルクオートと同じ
something = "Hello."
puts %Q!He said, "#{something}"!
# %! !で囲んだ場合もダブルクオートとなる。
# 区切り文字は! ! だけでなく ??や^^も使用できる


# ヒアドキュメント
# 色々な書き方があるらしいので、要確認。式展開もできる。
# メソッドを呼び出したり、配列を作ることも可能。
a = <<TEXT
これはヒアドキュメントです。
複数行にまたがる文字列を作成する際に便利
TEXT
puts a

def some
  <<~TEXT
    \ これはヒアドキュメント
    \ を使うと最後の識別子をインデントさせることができる
  TEXT
end
puts some

# フォーマットを指定して、文字列を作成する
puts sprintf('%0.3f', 1.2)
#=> 1.200

# 別の書き方
puts '%0.3f' % 1.2
#=> 1.200

puts sprintf('%0.3f + %0.3f', 1.2, 0.48)
#=> 1.200 + 0.480
puts '%0.4f + %0.4f' % [1.2, 0.48]
#=> 1.2000 + 0.4800

# その他、文字列作成
puts [10,20,30].join
#=> 102030

puts String.new('hello')

# 0文字でも1文字でも2文字以上、いずれも文字列(Stringオブジェクト)として扱われる。

# 基数指示子 以下全て255
# ２進数
puts 0b11111111
# ８進数
puts 0377
puts 0o377
# 16進数
puts 0xff

# Integer, Float, Rational, Complexは Numericのサブクラス

# &&や||の戻り値と評価を終了するタイミング
puts 1 && 2 && 3
#=> 3
puts 1 && nil && 3
#=> nil
puts 1 && false && 3
#=> false

puts nil || false
#=> false
puts false || nil
#=> nil
puts nil || false || 2 || 3
#=> 2

