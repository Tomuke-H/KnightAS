# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Weapon.destroy_all
Knight.destroy_all 
Player.destroy_all

p = Player.create(name:'Tom', cc:2, range:6, char:3, focus:5, madness:5, health:'good')
c = p.knights.create(name:'Apotheosis', frame:'Castellan', body:100, larm:100, rarm:100, lleg:100, rleg:100, shield:100, core:100)
w1 = c.weapons.create(name:'Volcano Lance', subtype:'Heavy Energy', ammo:0, wear:100)
w2 = c.weapons.create(name:'Plasma Decimator', subtype:'Heavy Energy', ammo:0, wear:100)
w3 = c.weapons.create(name:'Siegbreaker Cannons', subtype:'Medium Physical', ammo:300, wear:100)
w4 = c.weapons.create(name:'Shieldbreaker Missiles', subtype:'Heavy Physical', ammo:2, wear:100)
w5 = c.weapons.create(name:'Twin Meltas', subtype:'Medium Energy', ammo:0, wear:100)

puts "Players: #{Player.all.size}"
puts "Knights: #{Knight.all.size}"
puts "Weapons: #{Weapon.all.size}"