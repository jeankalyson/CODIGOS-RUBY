def entregar_celulas(valor)
  valores = [0,0,0,0,0,0]
  while valor != 0
    if valor - 100 >= 0
      valor = valor-100
      valores[0] = valores[0]+1
    elsif valor - 50 >= 0
      valor = valor-50
      valores[1] = valores[1]+1
    elsif valor - 20 >= 0
      valor = valor-20
      valores[2] = valores[2]+1
    elsif valor - 10 >= 0
      valor = valor-10
      valores[3] = valores[3]+1
    elsif valor - 5 >= 0 and valor % 2 != 0
      valor = valor-5
      valores[4] = valores[4]+1
    elsif valor - 2 >= 0
      valor = valor-2
      valores[5] = valores[5]+1
    end
  end
  for i in 0..5
    if valores[i]>0
      case i
        when 0
          puts "#{valores[i]} nota(s) de 100 reais"
        when 1
          puts "#{valores[i]} nota(s) de 50 reais"
        when 2
          puts "#{valores[i]} nota(s) de 20 reais"
        when 3
          puts "#{valores[i]} nota(s) de 10 reais"
        when 4
          puts "#{valores[i]} nota(s) de 5 reais"
        when 5
          puts "#{valores[i]} nota(s) de 2 reais"
      end
    end
  end
end
  


class ContaBancaria
  attr_accessor :saldo
  attr_accessor :numero

  def initialize(numero, saldo_inicial)
    @numero = numero
    @saldo = saldo_inicial
  end

  def sacar(valor)
    if valor <= @saldo
      @saldo = @saldo - valor
      entregar_celulas(valor)
      return true
    else
      puts "Saldo insuficiente!"
      return false
    end
  end

  def depositar(valor)
    @saldo = @saldo + valor
    return true
  end

  def transferir(valor, conta_destino)
    if valor <= @saldo
      @saldo = @saldo - valor
      conta_destino.saldo = conta_destino.saldo + valor
      return true
    else
      puts "Saldo insuficiente!"
      return false
    end
  end
end
@contas = Array.new
@contas << ContaBancaria.new(1, 500)
@contas << ContaBancaria.new(2, 1000)
@contas << ContaBancaria.new(3, 2000)
@contas << ContaBancaria.new(4, 750)
@contas << ContaBancaria.new(5, 1500)

def localizar_conta(numero)
  @contas.each do |conta|
    if conta.numero == numero
      return conta
    end
  end
  return nil
end
conta = 0;
c = nil;
while(c == nil)
  puts "Digite sua conta para entrar :"
  conta = gets.chomp.to_i
  c = localizar_conta(conta)
  if (c== nil)
     puts "Conta não localizada!"
  end
  
end
sair = 10;
while(sair != 0)
  puts "Qual operação deseja fazer?
1 - Ver saldo
2 - Depositar
3 - Sacar
4 - Transferir
5 - Trocar de conta"
sair = gets.chomp.to_i;
  if (sair == 1)
    c = @contas[conta-1].saldo
    puts "Saldo : #{c}"
  
  elsif (sair == 2)
    puts "Digite o valor que deseja depositar : "
    valor = gets.chomp.to_i;
    @contas[conta-1].depositar(valor)
    puts "Deposito realizado com sucesso. "

  elsif (sair == 3)
    puts "Digite o valor a ser sacado: "
    valor = gets.chomp.to_i
    while (valor % 100 != 0) and (valor % 50 != 0) and (valor % 20 != 0) and (valor % 10 != 0) and (valor % 5 !=0) and (valor % 2 != 0)
      puts "O valor solicitado deve ser múltiplo de R$ 2, R$ 5, R$ 10, R$ 20, R$ 50 ou R$ 100 reais!"
    puts "Digite o valor a ser sacado: "
      valor = gets.chomp.to_i
    end
    resp = @contas[conta-1].sacar(valor)
    if (resp != false)
      puts "Saque realizado com sucesso. "
    end

  elsif (sair == 4)
    puts "Qual valor deseja transferir?  "
    valor = gets.chomp.to_i;
    puts "Para qual conta deseja enviar? "
    cont_destino = gets.chomp.to_i;
    resp = @contas[conta-1].transferir(valor,@contas[cont_destino-1])
    if (resp != false)
      puts "Transferência realizada com sucesso. "
    end
    
  elsif (sair == 5)
    troca = 0
    puts "Para qual conta deseja trocar?"
    troca = gets.chomp.to_i;
    while(troca >5 or troca <1)
      puts "Conta não localizada!"
      puts "Para qual conta deseja trocar?"
      troca = gets.chomp.to_i;
    end
    conta = troca
    puts "Troca realizada com sucesso!. Bem vindo a conta #{conta} \n"
    
  elsif (sair ==0)
    puts "Até logo! "
    
  else
     puts "Operação inválida!"
  end
end
