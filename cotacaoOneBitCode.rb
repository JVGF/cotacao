require 'rest-client'
require 'json'

#puts "Digite data Inicial (MM-DD-AAAA)"
#dataInicial = gets.chomp
#.to_s

#puts "Digite data Final (MM-DD-AAAA)"
#dataFinalCotacao = gets.chomp
#puts "Digite Data"
#@dataCotacao = gets.chomp


#puts " A data digitada foi #{@dataCotacao}"
url = "https://olinda.bcb.gov.br/olinda/servico/PTAX/versao/v1/odata/CotacaoDolarDia(dataCotacao=@dataCotacao)?@dataCotacao='10-28-2019'&$top=100&$format=json"
#dataCotacao = @dataCotacao
#q= '@dataCotacao=dataCotacao&$top=100&$format=json'
resp = RestClient.get "#{url}"
puts JSON.parse(resp.body)
#puts JSON.parse(resp.code)
#puts resp



