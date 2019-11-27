require 'rest-client'
require 'json'

puts "Digite a data da cotação (MM-DD-AAAA)"
dataCotacaoDiaria = gets.chomp


resposta1 = RestClient.get "https://olinda.bcb.gov.br/olinda/servico/PTAX/versao/v1/odata//CotacaoDolarDia?$format=json&[dataInicial]"
resultado1 = JSON.parse(resposta1.body)



puts resultado1
puts resultado2
