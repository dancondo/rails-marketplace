# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Currency.destroy_all
User.destroy_all

Currency.create!(name: 'Bitcoin', currency_code: 'BTC')
Currency.create!(name: 'Ether', currency_code: 'ETH')
Currency.create!(name: 'Litecoin', currency_code: 'LTC')
Currency.create!(name: 'Dash', currency_code: 'DASH')
Currency.create!(name: 'Ripple', currency_code: 'XRP')

User.create!(first_name: 'Andre', last_name: 'Pinho', cpf: '06923610737', username: 'andrepinho', password: '123qwe', email: 'andre@gmail.com')
User.create!(first_name: 'Danilo', last_name: 'Condo', cpf: '46460666881', username: 'dancondo', password: '123456', email: 'danilo@gmail.com')
User.create!(first_name: 'Luiz', last_name: 'Lins', cpf: '45078471847', username: 'luizlins', password: '123456', email: 'luiz@gmail.com' )
User.create!(first_name: 'Oscar', last_name: 'Bonte', cpf: '86339523005', username: 'oscarinho', password: '123qwe', email: 'oscar@gmail.com' )
User.create!(first_name: 'Ricardo', last_name: 'da Silva', cpf: '64639474075', username: 'ricardao', password: '123456', email: 'ricardao@gmail.com' )
User.create!(first_name: 'Vinicios', last_name: 'Mendonca', cpf: '71479858005', username: 'mendonca_vns', password: '123qwe', email: 'mendonca@gmail.com' )


User.all.each do |user|
  rand(0..2).times do
    random_n = rand(0 .. 3.0)
    Post.create!(amount: random_n, price: random_n * rand(100 .. 1000), user: user, duration: rand(1..5))
  end
end
