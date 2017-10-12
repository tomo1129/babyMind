# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Relation.create(:key => 'mother', :name => 'お母さん')
Relation.create(:key => 'father', :name => 'お父さん')
Relation.create(:key => 'fetal', :name => '胎児')
Relation.create(:key => 'baby', :name => '乳児')
Relation.create(:key => 'grandpa', :name => 'おじいちゃん')
Relation.create(:key => 'grandma', :name => 'おばあちゃん')
