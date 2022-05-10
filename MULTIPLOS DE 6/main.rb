numeros = []
mult = 0
for i in 1..8
  numeros << gets.chomp.to_i
  if numeros[i-1]%6 == 0
    mult = mult+ 1
  end
end
puts "Os números são : "
for i in 1..8
  puts "#{numeros[i]}"
end
puts "O total de de multiplos de 6 é #{mult}"

