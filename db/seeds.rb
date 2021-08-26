require "open-uri"

puts "Removing all caravans..."
Caravan.destroy_all

puts "Removing all caravans..."
User.destroy_all

puts "Adding users..."
a = User.create(first_name: "Ally", last_name: "Hyun", email: "ally@gmail.com", password: "123456")
b = User.create(first_name: "Ilja", last_name: "Thoenes", email: "ilja@gmail.com", password: "123456")
c = User.create(first_name: "Sander", last_name: "Boogaards", email: "sander@gmail.com", password: "123456")

puts "Users added..."

puts "Adding caravans..."
file = URI.open('https://autoline.nl/img/s/caravanAIRSTREAM-604-Yukon---1617016059469960412_common--20051316414417917500.jpg')
caravan01 = Caravan.new(name: "Super caravan", description: "Best caravan in the world and for a very good price", built_year: 1984, brand: "Airstream", daily_rate: 20.00, user_id: a.id)
caravan01.photos.attach(io: file, filename: 'airstream1.jpg', content_type: 'image/jpg')
caravan01.save

file = URI.open('https://autoline.nl/img/s/caravanAIRSTREAM-604-Yukon---1617016063515592747_big--20051316414417917500.jpg')
caravan02 = Caravan.new(name: "Old caravan", description: "A real classic", built_year: 1962, brand: "Airstream", daily_rate: 50.00, user_id: b.id)
caravan02.photos.attach(io: file, filename: 'airstream2.jpg', content_type: 'image/jpg')
caravan02.save

file = URI.open('https://www.dejongrecreatie.nl/media-resize/af9052e1a7823b59c2738304442ec668/csm_zoom-image-homepage_961e9437a7.jpg')
caravan03 = Caravan.new(name: "Modern caravan", description: "A new caravan", built_year: 2020, brand: "Kip", daily_rate: 80.00, user_id: c.id)
caravan03.photos.attach(io: file, filename: 'kip1.jpg', content_type: 'image/jpg')
caravan03.save

file = URI.open('https://www.dejongrecreatie.nl/media-resize/53217453e051dae8dcb470f97ea60697/hobby-de-luxe-1.jpg')
caravan04 = Caravan.new(name: "Big caravan", description: "For family", built_year: 2015, brand: "Kip", daily_rate: 120.00, user_id: c.id)
caravan04.photos.attach(io: file, filename: 'kip2.jpg', content_type: 'image/jpg')
caravan04.save

file = URI.open('https://supertrips.nl/wp-content/uploads/2016/11/airstream-huren.jpg')
caravan05 = Caravan.new(name: "Best caravan for a party", description: "If you want to have a party in your caravan, this is the one. All lights are included and there is a great sound system.", built_year: 2012, brand: "Airstream", daily_rate: 65.50, user_id: b.id)
caravan05.photos.attach(io: file, filename: 'party_caravan.jpg', content_type: 'image/jpg')
caravan05.save

file = URI.open('https://www.dejongrecreatie.nl/media-resize/e2a5af7f2024d39372b05914b91aea45/2021-ww-premium-hero.jpg')
caravan06 = Caravan.new(name: "Available for the entire summer", description: "If you want to go away for a longer period of time, this caravan is the perfect fit", built_year: 2020, brand: "Hero", daily_rate: 99.99, user_id: a.id)
caravan06.photos.attach(io: file, filename: 'summer_caravan.jpg', content_type: 'image/jpg')
caravan06.save

file = URI.open('https://www.dejongrecreatie.nl/media-resize/9aada24716021ec2f12168dedeb78f1b/2021-ww-excellent-hero.jpg')
caravan07 = Caravan.new(name: "Only for experts", description: "Extra long for extra comfort. Only use this if you have driven with a caravan before.", built_year: 2008, brand: "Hero", daily_rate: 49.95, user_id: b.id)
caravan07.photos.attach(io: file, filename: 'long_caravan.jpg', content_type: 'image/jpg')
caravan07.save

file = URI.open('https://i.ebayimg.com/00/s/NTc2WDEwMjQ=/z/owMAAOSwXpdhECTZ/$_83.JPG')
caravan08 = Caravan.new(name: "Caravan for a quick getaway", description: "Small caravan, perfect for a quick getaway", built_year: 1997, brand: "UK build", daily_rate: 70, user_id: c.id)
caravan08.photos.attach(io: file, filename: 'quick_getaway_caravan.jpg', content_type: 'image/jpg')
caravan08.save

file = URI.open('https://www.caravanity.nl/wp-content/uploads/2019/06/thumbnail_IMG_0071.jpg')
caravan09 = Caravan.new(name: "If you want to have a weekend on your own", description: "Perfect caravan for 1 person", built_year: 2001, brand: "UK build", daily_rate: 66.66, user_id: c.id)
caravan09.photos.attach(io: file, filename: 'small_caravan.jpg', content_type: 'image/jpg')
caravan09.save

puts "Caravans added!"
