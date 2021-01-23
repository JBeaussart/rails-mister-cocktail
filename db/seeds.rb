puts "destroy ingredients && Cocktails"
Ingredient.destroy_all
Cocktail.destroy_all

puts "Creating ingredient && Cocktail..."
lemon = { name: "lemon" }
ice = { name: "ice" }
mint = { name: "mint leaves" }

pina_colada = { name: "pina colada" }
sex_on_the_beach = { name: "sex on the beach" }
malibu = { name: "malibu sunrise" }

[lemon, ice, mint].each do |attributes|
  ingredient = Ingredient.create!(attributes)
  puts "Created #{ingredient.name}"
end

[pina_colada, sex_on_the_beach, malibu].each do |attributes|
  cocktail = Cocktail.create!(attributes)
  puts "Created #{cocktail.name}"
end

puts "Finished!"