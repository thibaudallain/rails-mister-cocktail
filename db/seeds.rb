# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'json'
require 'open-uri'

url = 'https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'
ingredients_serialized = open(url).read
ingredients = JSON.parse(ingredients_serialized)

ingredients["drinks"].each do |ingredient|
  Ingredient.create(name: ingredient["strIngredient1"])
end

file = URI.open('https://images.unsplash.com/photo-1546171753-97d7676e4602?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=934&q=80')
cocktail = Cocktail.new(name: 'Mojito')
cocktail.photo.attach(io: file, filename: 'mojito-image.jpg', content_type: 'image/jpg')
# Here we write article.photo.attach(...) because we wrote has_one_attached :photo in app/models article.rb
cocktail.save
ingredient = Ingredient.where(name: 'Rum').first
ingredient_two = Ingredient.where(name: 'Lime').first
dose = Dose.new(description: "25cl", cocktail_id: cocktail.id, ingredient_id: ingredient.id)
dose.save
dose = Dose.new(description: "25cl", cocktail_id: cocktail.id, ingredient_id: ingredient_two.id)
dose.save

file = URI.open('https://images.unsplash.com/photo-1462887749044-b47cb05b83b8?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1950&q=80')
cocktail = Cocktail.new(name: 'Spritz')
cocktail.photo.attach(io: file, filename: 'spritz-image.jpg', content_type: 'image/jpg')
# Here we write article.photo.attach(...) because we wrote has_one_attached :photo in app/models article.rb
cocktail.save
ingredient = Ingredient.where(name: 'Red wine').first
ingredient_two = Ingredient.where(name: 'Water').first
dose = Dose.new(description: "25cl", cocktail_id: cocktail.id, ingredient_id: ingredient.id)
dose.save
dose = Dose.new(description: "25cl", cocktail_id: cocktail.id, ingredient_id: ingredient_two.id)
dose.save

file = URI.open('https://images.unsplash.com/photo-1490324120634-0fa86c62d6c1?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2118&q=80')
cocktail = Cocktail.new(name: 'Piña Colada')
cocktail.photo.attach(io: file, filename: 'pina-image.jpg', content_type: 'image/jpg')
# Here we write article.photo.attach(...) because we wrote has_one_attached :photo in app/models article.rb
cocktail.save
ingredient = Ingredient.where(name: 'Dark rum').first
ingredient_two = Ingredient.where(name: 'Pineapple juice').first
dose = Dose.new(description: "25cl", cocktail_id: cocktail.id, ingredient_id: ingredient.id)
dose.save
dose = Dose.new(description: "25cl", cocktail_id: cocktail.id, ingredient_id: ingredient_two.id)
dose.save

file = URI.open('https://images.unsplash.com/photo-1573768277009-98726695f7b6?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2100&q=80')
cocktail = Cocktail.new(name: 'Caïpirinha')
cocktail.photo.attach(io: file, filename: 'caipi-image.jpg', content_type: 'image/jpg')
# Here we write article.photo.attach(...) because we wrote has_one_attached :photo in app/models article.rb
cocktail.save
ingredient = Ingredient.where(name: 'Light rum').first
ingredient_two = Ingredient.where(name: 'Sugar syrup').first
dose = Dose.new(description: "25cl", cocktail_id: cocktail.id, ingredient_id: ingredient.id)
dose.save
dose = Dose.new(description: "25cl", cocktail_id: cocktail.id, ingredient_id: ingredient_two.id)
dose.save

file = URI.open('https://images.unsplash.com/photo-1461823385004-d7660947a7c0?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2100&q=80')
cocktail = Cocktail.new(name: 'Margarita')
cocktail.photo.attach(io: file, filename: 'margarita-image.jpg', content_type: 'image/jpg')
# Here we write article.photo.attach(...) because we wrote has_one_attached :photo in app/models article.rb
cocktail.save
ingredient = Ingredient.where(name: 'Tequila').first
ingredient_two = Ingredient.where(name: 'Triple sec').first
dose = Dose.new(description: "25cl", cocktail_id: cocktail.id, ingredient_id: ingredient.id)
dose.save
dose = Dose.new(description: "25cl", cocktail_id: cocktail.id, ingredient_id: ingredient_two.id)
dose.save

file = URI.open('https://images.unsplash.com/photo-1556881261-e41e8db21055?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=934&q=80')
cocktail = Cocktail.new(name: 'Cosmopolitan')
cocktail.photo.attach(io: file, filename: 'cosmo-image.jpg', content_type: 'image/jpg')
# Here we write article.photo.attach(...) because we wrote has_one_attached :photo in app/models article.rb
cocktail.save
ingredient = Ingredient.where(name: 'Vodka').first
ingredient_two = Ingredient.where(name: 'Triple sec').first
dose = Dose.new(description: "25cl", cocktail_id: cocktail.id, ingredient_id: ingredient.id)
dose.save
dose = Dose.new(description: "25cl", cocktail_id: cocktail.id, ingredient_id: ingredient_two.id)
dose.save

file = URI.open('https://images.unsplash.com/photo-1529671434436-8fbb37410056?ixlib=rb-1.2.1&auto=format&fit=crop&w=2100&q=80')
cocktail = Cocktail.new(name: "Teq' Paf")
cocktail.photo.attach(io: file, filename: 'teq-image.jpg', content_type: 'image/jpg')
# Here we write article.photo.attach(...) because we wrote has_one_attached :photo in app/models article.rb
cocktail.save
ingredient = Ingredient.where(name: 'Tequila').first
dose = Dose.new(description: "25cl", cocktail_id: cocktail.id, ingredient_id: ingredient.id)
dose.save

