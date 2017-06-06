

def draw

  rand(1..13)

end

def calculate(num1,num2)

  # Aは11に変換
  num1 = 11 if num1 == 1
  num2 = 11 if num2 == 1

  num1 + num2

end

puts num1 = draw
puts num2 = draw

puts calculate(num1,num2)
