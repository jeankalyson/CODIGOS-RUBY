numero = 0
num = 0
quant = 0
while num>=0
  puts "Digite um número negativo para parar"
  num = gets.chomp.to_i
  if num>0
    numero = numero+num
  end
  quant = quant+1
end
puts "A média dos números positivos digitados é: #{numero/quant}"
