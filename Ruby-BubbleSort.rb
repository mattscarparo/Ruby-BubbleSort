# Definição do método e do parâmetro que será utilizado para a organização do array
def organize(list)
    arraySize = list.length
    
    # Definição do loop para organizar o array, de acordo com o tamanho dele e definindo o que será necessário para efetuar a troca dos números.
    loop do
      change = false
      (arraySize - 1).times do |element|
        if list[element] > list[element + 1]
          list[element], list[element + 1] = list[element + 1], list[element]
          change = true
        end
      end
      
      break if not change
    end
    
    list
  end
  
  # Embora daqui para baixo tenha decidido trabalhar com apenas 6 números, é possível aumentarmos esta quantidade sem a necessidade de mexer em nada no método e no loop definidos acima.
  puts "Digite seis (6) números aleatórios para colocarmos em ordem crescente, ou seja, do menor para o maior."
  
  # Criação do array vazio que irá ser organizado
  userNumbers = []
  
  # Criação das entradas do usuário que serão adicionadas ao array vazio
  puts '-' * 30
  puts "Digite o PRIMEIRO número: "
  userNumbers.push gets.chomp.to_i
  puts "Digite o SEGUNDO número: "
  userNumbers.push gets.chomp.to_i
  puts "Digite o TERCEIRO número: "
  userNumbers.push gets.chomp.to_i
  puts "Digite o QUARTO número: "
  userNumbers.push gets.chomp.to_i
  puts "Digite o QUINTO número: "
  userNumbers.push gets.chomp.to_i
  puts "Digite o SEXTO número: "
  userNumbers.push gets.chomp.to_i

  # Invocando o método para organizar o array com os números informados pelo usuário.
  organize(userNumbers)
  
  # Impressão dos números após terem sido organizados e finalização do programa.
  puts '-' * 30
  puts "Seus números escolhidos e colocados em ordem crescente são: #{userNumbers}\n\n"
  puts "Obrigado por utilizar o nosso terminal! =)"