# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
vintage_guitars = VintageGuitar.create(name: "Gibson", price: 8000, image_url: "https://images.reverb.com/image/upload/s--fQJhg5y2--/f_auto,t_supersize/v1530637364/wqvih9fdus6jhkofkxvs.jpg", description: "Mahogany solid body.")

vintage_guitars = VintageGuitar.create(name: "Fender", price: 5000, image_url: "https://images.reverb.com/image/upload/s--KFhOeFHA--/f_auto,t_supersize/v1502230778/gane1xi8osjyubcq5zr8.jpg", description: "Fender Classic '72 Telecaster Custom PF Black.")

vintage_guitars = VintageGuitar.create(name: "Rickenbacker", price: 3795, image_url: "https://images.reverb.com/image/upload/s--7rh8W7m9--/f_auto,t_supersize/v1526072156/tjvu31p79jroeva6ibhc.jpg", description: "Two-piece solid maple back with a two-piece carved out maple top.")