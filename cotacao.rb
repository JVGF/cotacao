require 'rest-client'
require 'json'

#puts "Digite a data inicial da cotação (MM-DD-AAAA)"
#@dataInicial = gets.chomp

#puts "Digite a data final da cotação (MM-DD-AAAA)"
#@dataFinalCotacao = gets.chomp

#url = "https://olinda.bcb.gov.br/olinda/servico/PTAX/versao/v1/odata/CotacaoDolarDia(dataCotacao=@dataCotacao)?@dataCotacao='10-28-2019'&$top=100&$format=json"
url = "https://olinda.bcb.gov.br/olinda/servico/PTAX/versao/v1/odata/CotacaoDolarPeriodo(dataInicial=@dataInicial,dataFinalCotacao=@dataFinalCotacao)?@dataInicial='10-01-2019'&@dataFinalCotacao='10-31-2019'&$top=100&$format=json"
resp = RestClient.get "#{url}"
puts JSON.parse(resp.body)

#resposta2 = RestClient.get "https://olinda.bcb.gov.br/olinda/servico/PTAX/versao/v1/odata/CotacaoDolarPeriodo?$format=json&[dataFinalCotacao]"
#resultado2 = JSON.parse(resposta2.body)



#puts resultado1
#puts resultado2
