# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Cleaning database..."
Skill.destroy_all
DevelopSkill.destroy_all
User.destroy_all
Vacancy.destroy_all
VacancySkill.destroy_all
Message.destroy_all
Conversation.destroy_all

puts "Creating shit"
