# This will delete any existing rows from the Product and User tables
# so you can run the seed file multiple times without having duplicate entries in your database
puts "Deleting old data..."
Product.destroy_all
User.destroy_all

puts "Creating users..."
user1 = User.create(name: Faker::Name.name)
user2 = User.create(name: Faker::Name.name)
user3 = User.create(name: Faker::Name.name)

puts "Creating products..."
product1 = Product.create(name: "Stapler", price: 10)
product2 = Product.create(name: "Whiteboard", price: 15)
product3 = Product.create(name: "Dry Erase Markers", price: 5)
product4 = Product.create(name: "Ballpoint Pens", price: 2)
product5 = Product.create(name: "Scotch Tape", price: 3)

puts "Creating reviews..."
Review.create(star_rating: 5, comment: "works like a charm!", user_id: user1.id, product_id: product1.id)
Review.create(star_rating: 5, comment: "Awesome!", user_id: user2.id, product_id: product2.id)
Review.create(star_rating: 5, comment: "Not the best", user_id: user3.id, product_id: product3.id)
Review.create(star_rating: 5, comment: "cool!", user_id: user1.id, product_id: product4.id)
Review.create(star_rating: 5, comment: "sucks!", user_id: user2.id, product_id: product5.id)
Review.create(star_rating: 5, comment: "great!", user_id: user3.id, product_id: product1.id)
Review.create(star_rating: 5, comment: "what is this?!", user_id: user1.id, product_id: product2.id)
puts "Seeding done!"