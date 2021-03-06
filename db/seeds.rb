Order.destroy_all
Post.destroy_all
Currency.destroy_all
User.destroy_all

Currency.create!(name: 'Bitcoin', currency_code: 'BTC', exchange_rate: 29000.5234)
Currency.create!(name: 'Ether', currency_code: 'ETH', exchange_rate: 1400.43)
Currency.create!(name: 'Litecoin', currency_code: 'LTC', exchange_rate: 255.34)
Currency.create!(name: 'Dash', currency_code: 'DASH', exchange_rate: 343.32)
Currency.create!(name: 'Ripple', currency_code: 'XRP', exchange_rate: 54.123412)

User.create!(first_name: 'Andre', last_name: 'Pinho', cpf: '06923610737', username: 'andrepinho', password: '123qwe', email: 'andre@gmail.com', public_key: 'Akadffskd$$3ef3ert4twcserer656v')
User.create!(first_name: 'Danilo', last_name: 'Condo', cpf: '46460666881', username: 'dancondo', password: '123456', email: 'danilo@gmail.com', public_key: '392ycr87bejvwtivyuv6')
User.create!(first_name: 'Luiz', last_name: 'Lins', cpf: '45078471847', username: 'luizlins', password: '123456', email: 'luiz@gmail.com', public_key: 'iowve5ubi4wctcv46uavw4')
User.create!(first_name: 'Oscar', last_name: 'Bonte', cpf: '86339523005', username: 'oscarinho', password: '123qwe', email: 'oscar@gmail.com', public_key: '4G0R4###V41$$S3NT4R')
User.create!(first_name: 'Ricardo', last_name: 'da Silva', cpf: '64639474075', username: 'ricardao', password: '123456', email: 'ricardao@gmail.com', public_key: '!#$2321C0mI#41#su4F4m1l1a')
User.create!(first_name: 'Vinicios', last_name: 'Mendonca', cpf: '71479858005', username: 'mendonca_vns', password: '123qwe', email: 'mendonca@gmail.com', public_key: 'Mendonca243534Ehdf434crFOda')



User.all.each do |user|
  random_n = rand(0 .. 3.0)
  Post.create!(amount: random_n, price: random_n * rand(100 .. 1000), user: user, currency: Currency.all.sample)
end

Post.all.each do |post|
  rand(0..2).times do
    one_user = User.all.sample
    Order.create!(amount: rand(0.1 .. post.amount), post: post, user: one_user)
  end
end
