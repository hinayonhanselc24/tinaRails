# Clear existing data
Restaurant.destroy_all

# Create sample restaurants
restaurant1 = Restaurant.create!(name: "Big Daddy's", address: "J.C Aquino Street Butuan City")
restaurant2 = Restaurant.create!(name: "Adventino's Pizza", address: "Ochoa Butuan City")
restaurant3 = Restaurant.create!(name: "Crispy King", address: "Boulevard Butuan City")
restaurant4 = Restaurant.create!(name: "Angel's Burger", address: "Sikatuna Butuan City")
restaurant5 = Restaurant.create!(name: "Nana's Eatery", address: "Lumbocan Butuan City")

# Create tables for restaurant1
restaurant1.tables.create!(number: 1, seats: 4)
restaurant1.tables.create!(number: 2, seats: 2)
restaurant2.tables.create!(number: 3, seats: 6)

# Create tables for restaurant2
restaurant2.tables.create!(number: 1, seats: 6)
restaurant2.tables.create!(number: 2, seats: 4)
restaurant2.tables.create!(number: 3, seats: 2)

# Create tables for restaurant2
restaurant3.tables.create!(number: 1, seats: 6)
restaurant3.tables.create!(number: 2, seats: 4)
restaurant3.tables.create!(number: 3, seats: 2)

# Create tables for restaurant2
restaurant4.tables.create!(number: 1, seats: 6)
restaurant4.tables.create!(number: 2, seats: 4)
restaurant4.tables.create!(number: 3, seats: 2)

# Create tables for restaurant2
restaurant5.tables.create!(number: 1, seats: 6)
restaurant5.tables.create!(number: 2, seats: 5)
restaurant5.tables.create!(number: 3, seats: 2)

puts "Seed data created successfully."
