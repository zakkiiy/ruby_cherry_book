# 16進数で返す
def to_hex(r, g, b)
  [r, g, b].sum('#') do |n|
    n.to_s(16).rjust(2, '0')
  end
end

puts to_hex(12,98,100)

# 16進数を10進数にする
def to_ints(hex)
  p r = hex[1..2]
  p g = hex[3..4]
  p b = hex[5..6]

  [r, g, b].map do |s|
    s.hex
  end
end

p to_ints("#1234ff")

