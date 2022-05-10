puts "digite um número"
numero = gets.chomp.to_i
n = numero
for i in 1..n-1
  numero = numero*i
end
puts "o fatorial de #{n} é #{numero}"