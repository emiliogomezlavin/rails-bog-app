# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Creature.destroy_all

Creature.create([
  {
    name: "Gollum",
    description: "originally known as Sméagol, was at first a Stoor, one of the three early Hobbit-types. Deformed and twisted in body and mind by the corruption of the Ring, his chief desire was to possess the very Ring that had enslaved him."
  },
  {
    name: "Yoda",
    description: "900-year-old Jedi master. Lives in a swamp on Degoba. Steals food and giggles."
  },
  {
    name: "Swamp Thing",
    description: "A humanoid mass of vegetable matter who fights to protect his swamp home, the environment in general, and humanity from various supernatural or terrorist threats."
  }
])
