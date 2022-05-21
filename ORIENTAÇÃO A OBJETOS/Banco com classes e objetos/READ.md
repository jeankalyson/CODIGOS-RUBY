Atividade 9: Caixa eletrônico com a classe ContaBancaria (prazo: 20/05/2022)

Caixa Eletrônico com a classe ContaBancaria
Você foi muito elogiado pelo corpo de diretores do banco pela implementação do algoritmo que está funcionando perfeitamente nos caixas eletrônicos. Por ter cumprido essa tarefa tão bem, os diretores confiaram uma nova tarefa para você: modernizar o software dos caixas eletrônicos usando Programação Orientada a Objetos.

A partir de agora, ao chegar num caixa eletrônico, o cliente deve primeiramente informar o número de sua conta. Caso o cliente forneça um número de conta que não existe, o caixa eletrônico deve mostrar a mensagem "Conta não localizada!". Caso a conta seja localizada, o caixa eletrônico deve mostrar:

Qual operação deseja fazer?
1 - Ver saldo
2 - Depositar
3 - Sacar
4 - Transferir

Caso o cliente digite 1, o caixa eletrônico deve mostrar o saldo da conta.

Caso o cliente digite 2, o caixa eletrônico deve exibir "Quanto deseja depositar?". Em seguida, o cliente digita o valor do depósito, que será depositado na conta do cliente. Por fim, o caixa eletrônico deve exibir "Depósito realizado com sucesso!".

Caso o cliente digite 3, o caixa eletrônico deve exibir "Quanto deseja sacar? (cédulas disponíveis: R$ 50, R$ 20, R$ 10, R$ 5 e R$ 2):". Em seguida, o cliente informa o valor do saque. Caso o cliente tenha saldo suficiente, o caixa deve realizar o saque informando a quantidade de cédulas de cada nota (R$ 50, R$ 20, R$ 10, R$ 5 e R$ 2), e depois exibir "Saque realizado com sucesso!". Caso o cliente não tenha saldo suficiente, o caixa deve exibir "Saldo insuficiente!".

Caso o cliente digite 4, o caixa eletrônico deve solicitar o número da conta de destino exibindo na tela "Digite o número da conta de destino". Caso a conta não seja localizada, o caixa deve exibir "Conta de destino não localizada!". Caso a conta seja localizada, o caixa deve exibir "Quanto deseja transferir" e ler o valor a ser transferido. Caso o cliente tenha saldo suficiente para fazer a transferência, a operação será realizada e a mensagem "Transferência realizada com sucesso!" deve ser exibido na tela. Caso o cliente não tenha saldo suficiente, o caixa deve exibir "Saldo insuficiente!"

Caso o cliente digite um outro número de operação que não seja 1, 2, 3 ou 4, o caixa deve exibir "Operação inválida!".

O caixa eletrônico deve solicitar o número da conta do cliente continuamente, permitindo que vários clientes façam suas operações. O caixa eletrônico deve ser encerrado quando o cliente digitar 0 (zero).
Orientações

    Faça o download dos arquivos libdesafio2.rb e desafio2.rb e coloque os dois na mesma pasta;
    Implemente a solução dessa atividade no arquivo desafio2.rb;
    Você vai precisar do algoritmo que implementou na "Atividade Desafio I: Lógica do Caixa Eletrônico", portanto, crie uma função, no arquivo desafio2.rb, chamada entregar_cedulas, que recebe o valor do saque como parâmetro e mostra na tela quantas cédulas de cada nota (R$ 50, R$ 20, R$ 10, R$ 5 e R$ 2) serão entregues ao cliente.
    No arquivo desafio2.rb, você terá a disposição a implementação da classe ContaBancaria (não precisa implementá-la, basta usá-la) e uma função chamada localizar_conta, que recebe o número da conta como parâmetro e retorna um objeto da classe ContaBancaria com o número informado. Caso nenhuma conta seja encontrada com o número informado, a função retorna nulo (nil);
    Você poderá testar seu código usando as seguintes contas bancárias, que já estão a disposição para você no arquivo desafio2.rb, portanto você não precisa criá-las.
    
# Conta número: 1; Saldo: R$ 500
# Conta número: 2; Saldo:	R$ 1000
# Conta número: 3; Saldo:	R$ 2000
# Conta número: 4; Saldo:	R$ 750
# Conta número: 5; Saldo:	R$ 1500
