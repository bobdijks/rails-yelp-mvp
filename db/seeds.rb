puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
dishoom = { name: "Dishoom", address: "7 Boundary St, London E2 7JE", category: "french" }
pizza_east =  { name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", category: "french" }
whatever =  { name: "Whatever", address: "Central Park, London E2 3PO", category: "italian" }
beijing =  { name: "Beijing", address: "Arsenal Stadium, North-London", category: "chinese" }
waffle_house =  { name: "Waffle house", address: "Picadilly Circus, Central London", category: "belgian" }

[ dishoom, pizza_east, whatever, beijing, waffle_house ].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end

puts "Finished!"
