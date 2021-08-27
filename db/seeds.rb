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

file = URI.open('https://www.caravanity.nl/wp-content/uploads/2014/07/kolonivan-01.jpg')
caravan10 = Caravan.new(name: "The caravan that looks like an egg", description: "It is a very well designed caravan, with all features that you will need", built_year: 2014, brand: "Egg", daily_rate: 45, user_id: b.id)
caravan10.photos.attach(io: file, filename: 'egg.jpg', content_type: 'image/jpg')
caravan10.save

file = URI.open('https://www.gewoonvoorhem.nl/app/uploads/fly-images/78186/Romotow-Caravan-Concept-1000x750-c.jpg')
caravan11 = Caravan.new(name: "The most futuristic caravan ever", description: "If you want all eyes on you on the campsite, you have to rent this caravan. It looks like it comes from the future.", built_year: 2021, brand: "Airstream", daily_rate: 75, user_id: a.id)
caravan11.photos.attach(io: file, filename: 'future_caravan.jpg', content_type: 'image/jpg')
caravan11.save

file = URI.open('https://media.indebuurt.nl/nijmegen/2018/07/06025458/caravanvoordedeur-e1531812133364.jpg')
caravan12 = Caravan.new(name: "Simple caravan with lots of light", description: "A well lit caravan for rent", built_year: 2001, brand: "UK build", daily_rate: 39.50, user_id: a.id)
caravan12.photos.attach(io: file, filename: 'lots_of_light_caravan.jpg', content_type: 'image/jpg')
caravan12.save

file = URI.open('https://man-man.nl/app/uploads/fly-images/174939/zilver-caravan-e1619699145151-1200x545-c.jpg')
caravan13 = Caravan.new(name: "Rent this extendable caravan for a great holiday", description: "This caravan is extendable. This means that would will drive with a small caravan, but still can camp in a big caravan.", built_year: 2008, brand: "Kip", daily_rate: 78, user_id: b.id)
caravan13.photos.attach(io: file, filename: 'extendable_caravan.jpg', content_type: 'image/jpg')
caravan13.save

file = URI.open('https://www.dejongrecreatie.nl/media/21802/2021-ww-prestige-hero.jpg')
caravan14 = Caravan.new(name: "You can go on holiday during winter with this caravan", description: "This caravan is perfect for a holiday in winter. It has extra heating to keep warm and a extra big hot water tank", built_year: 2001, brand: "Airstream", daily_rate: 62, user_id: c.id)
caravan14.photos.attach(io: file, filename: 'winter_caravan.jpg', content_type: 'image/jpg')
caravan14.save

file = URI.open('https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/saix-maxus-van-1-1614014327.png')
caravan15 = Caravan.new(name: "This caravan has 2 floors, perfect for a family", description: "This caravan has enough space for an entire family, since it has 2 floors. This is really something else!", built_year: 2009, brand: "UK build", daily_rate: 39.95, user_id: c.id)
caravan15.photos.attach(io: file, filename: 'two_floors_caravan.png', content_type: 'image/png')
caravan15.save

file = URI.open('https://i.pinimg.com/736x/66/7e/f2/667ef2dbd24a856dc48152099a6d67e5.jpg')
caravan16 = Caravan.new(name: "This insane caravan has a swimming pool on the roof", description: "This is the perfect caravan for a holiday with kids. You can always keep an eye on them when they go for a swim, since the swimming pool is right on top of your caravan! This is never seen before.", built_year: 2016, brand: "Airstream", daily_rate: 150, user_id: b.id)
caravan16.photos.attach(io: file, filename: 'pool_caravan.jpg', content_type: 'image/jpg')
caravan16.save

file = URI.open('http://up.picr.de/24964600fy.jpg')
caravan17 = Caravan.new(name: "This caravan can create some extra living space", description: "You can slide out the side, which will create some extra space for an extra large dinner table", built_year: 2001, brand: "Kip", daily_rate: 111, user_id: a.id)
caravan17.photos.attach(io: file, filename: 'slide_caravan.jpg', content_type: 'image/jpg')
caravan17.save

puts "Caravans added!"
