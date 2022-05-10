puts "Digite o valor de x"
x = gets.chomp.to_i
puts "Digite o valor de y"
y = gets.chomp.to_i
var = x
repeticao =y
for i in 1..repeticao-1
  x = x*var
end
puts "O valor de #{var} elevado a #{repeticao} é #{x}"