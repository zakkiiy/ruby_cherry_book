# P73~
# ガベージコレクション
# Rubyは使用されなくなったオブジェクトを回収して、自動的にメモリを解放する。そのためメモリ管理を意識する必要がない。

# 擬似変数
# nilやtrue、falseは擬似変数と呼ばれる特殊な変数。
# 他にもselfやなど。

# 参照の概念
# Rubyの変数にはオブジェクトそのものではなく、オブジェクトへの参照が格納されている。
# 変数を他の変数に代入したり、メソッドの引数として渡したりすると、新しい変数やメソッドの引数は元の変数と同じオブジェクトを参照する。
# object_idメソッドを使用することで、確認できる。
a = 'Hello'
b = 'Hello'
puts a.object_id #=> 60
puts b.object_id #=> 80

c = b
puts c.object_id #=> 80

def m(d)
  puts d.object_id #=> 80
end
m(c)

# equal?メソッドで同じオブジェクトかどうかを確認できる
puts a.equal?(b) #=> false
puts b.equal?(c) #=> true


# 文字列や配列、ハッシュといった変更可能なオブジェクト（ミュータブルと言われる）を扱う場合は、
# 同一のオブジェクトを参照しているのか、異なるオブジェクトを参照しているのか意識しないと思いがけないバグを作り込んでしまうことがある。

# 組み込みライブラリ、標準ライブラリ、gem
# 組み込みライブラリ
  # StringクラスやIntegerクラスなど
# 標準ライブラリ
  # インストール不要
  # Dateクラスなど
# gem
  # インストール必要
  # 外部ライブラリ

# ライブラリの読み込み方法
# require ライブラリ名
require 'date'
puts Date.today #=> 2023-09-01

# require_relative
# 自作Rubyプログラムを読み込む場合は、require_relativeを使用する
# 自ファイルからの相対パスで読み込むファイルを指定する
# requireでも読み込むことはできるが推奨されない。

# 標準出力で使用されるputs, print, p, ppメソッドについて

# putsメソッド
# 改行を加えて、変数の内容やメソッドの戻り値をターミナルに出力する。putsメソッド自身の戻り値はnil
puts 123
puts "aiueo"

result = puts 123
puts result #=> nil

# printメソッド 改行されない 戻り値nil
print 123
print 'aiueo' #=> 123aiueo%
puts '-----'

# pメソッド
# ダブルクオーテーションで囲まれる
# 戻り値は標準出力と同じ。
p 123 #=> 123
p 'aiueo' #=> "aiueo"

result = p 123
p result #=> 123

# ppメソッド
p Encoding.aliases.take(5)
pp Encoding.aliases.take(5)