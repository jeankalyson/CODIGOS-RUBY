numero = 0
num = 0
while num>=0
  puts "Digite um número negativo para parar"
  num = gets.chomp.to_i
  if num>0
    numero = numero+num
  end
end
puts "A soma dos números positivos digitados é: #{numero}"
