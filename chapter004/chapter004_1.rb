# P102~115
### 配列 複数のデータをまとめて格納できるオブジェクトのこと。添字（インデックス）を指定することでデータを取り出せる。

# 空の配列
puts []

# Arrayクラスのオブジェクト
puts [].class #=> Array

# 配列の中に配列
a = [[1,2,3], [4,5,6], [7,8,9]]
p a[0] #=> [1, 2, 3]
p a[2][0] #=> 7
# p a[5][3] #=> nil
# 存在しない要素を指定するとnilが返ってくる。

puts a.size #=> 3 配列の長さ(要素の個数)を取得できる
puts a.length #=> 3

# 要素の変更、追加、削除
# 変更 変更したい要素を指定する
a = [1,2,3]
a[1] = 20
p a #=> [1, 20, 3]

# 追加 
a[4] = 50
p a #=> [1, 20, 3, nil, 50]
# 間の値がnilとなっている。

# << を使用すると配列の最後に要素を追加できる。
a = []
a << 1
a << 2
a << 3
p a #=> [1, 2, 3]

# 削除
a = [1, 2, 3]
a.delete_at(1)
p a #=> [1, 3]
# ちなみに削除した値の2は戻り値となる

# 存在しない添字を指定するとnilが返ってくる

# 配列を使用した多重代入
a,b = [1, 2]
p a,b #=> 1 2

### ブロック
# ブロックとはメソッドの引数として渡すことのできる処理の塊。

# forを使うのではなく、eachメソッドを使用している。
# 配列自身に対して、「繰り返せ」という命令を送っている。
numbers = [1,2,3,4]
sum = 0
numbers.each do |n|
  sum += n
end
puts sum #=> 10

# 配列の要素を順番に取り出す作業はeachメソッドで行い
# その要素をどう扱うかはdo~endのブロックに記述する
# nはブロックパラメータ
# nには1,2,3,4が順番に順番に渡される

# delete_ifメソッド
# 配列から奇数の要素を削除。　普通にdeleteメソッドを使用する場合は(2)みたいに指定した値しか削除できない
a = [1,2,3,1,2,3]
a.delete_if do |n|
  n.odd?
end
p a #=> [2, 2]
# eachと同じように要素を一つずづ渡す

numbers = [1,2,3,4]
sum = 0
numbers.each do |n|
  sum_value = n.even? ? n * 10 : n * 20
  sum += sum_value
end
puts sum #=> 140
# ブロックの外で作成されたローカル変数はブロックの内部でも参照できる。 sum_valueは外部から参照できない。

# ブロックはdo endだけでなく、{}でも作成できる
numbers = [1,2,3,4]
sum = 0
numbers.each { |n|
  sum += n
}
puts sum #=> 10

# map/(collect) 
# mapメソッドは各要素に対してブロックを評価した結果を新しく配列にして返す。
# https://qiita.com/massaaaaan/items/d90d10cb023bedc74fb2
numbers = [1,2,3,4,5]
# 配列の初期化は必要ない
new_num = []
new_num = numbers.map { |n| n * 10 }
p new_num

# eachの場合
numbers = [1,2,3,4,5]
new_num = []
new_num = numbers.each { |n| n * 10 }
p new_num

array = [1,2,3,4,5]
array.each do |item|
  puts item * 2
end
#=> 246810 縦に

array = [1,2,3,4,5]
result = array.map do |item|
  p item * 2
end #=> 246810 縦に
p result #=> [2, 4, 6, 8, 10]

# ブロックの戻り値によって変数に入れられるかどうか考えられそう。eachは戻り値がないため変数に入れることができない。


# select/find_all/reject (エイリアス)
# 各要素に対してブロックを評価して、その戻り値が真の要素を集めた配列だけを返すメソッド。
numbers = [1,2,3,4,5,6]
even_numbers = numbers.select { |n| n.even? }
p even_numbers #=> [2,4,6]

# reject ブロックの戻り値が真になった要素を除外した配列を返す。
numbers = [1,2,3,4,5,6]
odd_numbers = numbers.reject { |n| n.even? }
p odd_numbers #=> [1,3,5]

# find/detect
# ブロックの戻り値が真になった最初の要素を返す。
numbers = [1,2,3,4,5,6]
even_numbers = numbers.find { |n| n.even? }
p even_numbers #=>2

# &とシンボルを使用して簡潔に書く 置き換えられる ※mapに限らず
p ['ruby', 'java', 'python'].map { |s| s.upcase }
# |s|の箇所のブロックパラメータが一つたけ。　s.upcaseの後に引数がないこと。　メソッドを一回呼び出す以外の処理がないこと。
p ['ruby', 'java', 'python'].map(&:upcase)

