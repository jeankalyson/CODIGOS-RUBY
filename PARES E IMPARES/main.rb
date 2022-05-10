puts "Digite quantos valore quer usar:"
x = gets.chomp.to_i
par = 0
impar = 0
somaimpar = 0
somapar = 0
for i in 1..x
  puts "Digite o #{i} valor:"
  var = gets.chomp.to_i
  if var%2 == 0
    par = par + 1
    somapar = somapar+var
  else
    impar = impar+1 
    somaimpar = somaimpar + var
  end
end
puts "RESULDADO :"
puts "#{par} número(s) par(es);"
puts "#{impar} número(s) ímpar(es);"
puts "Soma dos número(s) par(es): #{somapar}"
puts "Soma dos número(s) ímpar(es): #{somaimpar}"






