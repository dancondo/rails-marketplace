# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Currency.destroy_all
User.destroy_all
Post.destroy_all

Currency.create!(name: 'Bitcoin', currency_code: 'BTC')
Currency.create!(name: 'Ether', currency_code: 'ETH')
Currency.create!(name: 'Litecoin', currency_code: 'LTC')
Currency.create!(name: 'Dash', currency_code: 'DASH')
Currency.create!(name: 'Ripple', currency_code: 'XRP')

User.create!(first_name: 'Andre', last_name: 'Pinho', cpf: '06923610737', username: 'andrepinho', password: '123qwe', email: 'andre@gmail.com')
User.create!(first_name: 'Danilo', last_name: 'Condo', cpf: '46460666881', username: 'dancondo', password: '123456', email: 'danilo@gmail.com')
User.create!(first_name: 'Luiz', last_name: 'Lins', cpf: '45078471847', username: 'luizlins', password: '123456', email: 'luiz@gmail.com' )
User.create!(first_name: 'Oscar', last_name: 'Bonte', cpf: '86339523005', username: 'oscarinho', password: '123qwe', email: 'oscar@gmail.com' )

User.all.each do |user|
  rand(3).times do
    Post.create!(amount: rand(10000), user: user, currency: Currency.all.sample, duration: )
  end
end



# Post.create!(amount: 1500, ease: 1.5, user: User.find_by(username: 'andrepinho'), currency: Currency.find_by(coin: 'Bitcoin'))
# Post.create!(amount: 3500, ease: 1, user: User.find_by(username: 'andrepinho'), currency: Currency.find_by(coin: 'Ether'))
# Post.create!(amount: 4500, ease: 1.5, user: User.find_by(username: 'andrepinho'), currency: Currency.find_by(coin: 'Litecoin'))
# Post.create!(amount: 3500, ease: 2, user: User.find_by(username: 'andrepinho'), currency: Currency.find_by(coin: 'Bcash'))
# Post.create!(amount: 5500, ease: 1.5, user: User.find_by(username: 'andrepinho'), currency: Currency.find_by(coin: 'Ripple'))
