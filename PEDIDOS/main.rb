pedido = 1
quant = 0
valor = 0
total = 0
while pedido!=0
    puts "Digite o número do pedido : "
    pedido = gets.chomp.to_i
    if pedido != 0
      puts "Digite a quantidade desejada : "
      quant = gets.chomp.to_f
      puts "Digite o valor da compra : "
      valor = gets.chomp.to_f
      total = total + (quant*valor)
    end
end
puts "Obrigado pela compra! O valor a ser pago é de #{total}"

