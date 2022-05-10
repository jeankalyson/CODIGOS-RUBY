numero = 1
while numero!= 0
  puts "Digite um número : "
  numero = gets.chomp.to_i
  for i in 0..numero/2
    if i+(i+1)+(i+2) == numero
      puts"É um número triangular"
    end
  end
end
  
