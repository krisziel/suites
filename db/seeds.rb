# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

drinks = Drink.create([
    {
      type:'Champagne',
      name:'2004 Dom Perignon',
      location:'',
      description:''
    },
    
  ])
  #
  # t.string   "name"
  # t.string   "location"
  # t.text     "description"
  # t.string   "type"
