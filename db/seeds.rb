# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Currency.create!(coin: 'Bitcoin')
Currency.create!(coin: 'Ether')
Currency.create!(coin: 'Litecoin')
Currency.create!(coin: 'Bcash')
Currency.create!(coin: 'Ripple')

Post.create!(amount: 1500, ease: 1.5, user: User.find_by(username: 'andrepinho'), currency: Currency.find_by(coin: 'Bitcoin'))
Post.create!(amount: 3500, ease: 1, user: User.find_by(username: 'andrepinho'), currency: Currency.find_by(coin: 'Ether'))
Post.create!(amount: 4500, ease: 1.5, user: User.find_by(username: 'andrepinho'), currency: Currency.find_by(coin: 'Litecoin'))
Post.create!(amount: 3500, ease: 2, user: User.find_by(username: 'andrepinho'), currency: Currency.find_by(coin: 'Bcash'))
Post.create!(amount: 5500, ease: 1.5, user: User.find_by(username: 'andrepinho'), currency: Currency.find_by(coin: 'Ripple'))
