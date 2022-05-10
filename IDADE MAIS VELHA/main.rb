nomes = []
idades = []
min = 0
max = 0
for i in 1..10
  puts "Digite o #{i} nome: "
  nomes << gets.chomp.to_s
  puts "Digite a #{i} idade: "
  idades << gets.chomp.to_i
  if idades[i-1] < idades[min]
    min = i-1
  end
  if idades[i-1] > idades[max]
    max = i-1
  end
end
puts "#{nomes[max]} é o mais velho com #{idades[max]} de idade "
puts "#{nomes[min]} é o mais novo com #{idades[min]} de idade "


