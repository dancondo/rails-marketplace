desc "Fetch the exchange rates for cryptocurrencies"
task :get_rates do

  require 'open-uri'
  require 'json'

  base_url = "https://rest.coinapi.io/v1/exchangerate/"
  apikey = "?apikey=#{ENV['X-CoinAPI-Key']}"
  default_currency = '/BRL'


  Currency.all.each do |currency|
    code = currency.currency_code
    url = base_url + code + default_currency + apikey
    serialized_info = open(url).read
    info = JSON.parse(serialized_info)
    puts info["rate"]
    currency.update!(exchange_rate: info["rate"])
  end

  Currency.all.each do |currency|
    puts "#{currency.name} updated its rate to #{currency.exchange_rate}"
  end

end

