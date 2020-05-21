# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Destroy all data'
Citizen.destroy_all

puts "create one normal citizen"
Citizen.create!(
  email: 'yes@gmail.com',
  password: 'yesyes',
  nric: 'S1231231A',
  postal_code: '123123'
  )

puts "create one normal citizen"
Citizen.create!(
  email: 'righton@gmail.com',
  password: 'rightright',
  nric: 'S1231232A',
  postal_code: '123124'
  )

puts "create one normal citizen"
Citizen.create!(
  email: 'yup@gmail.com',
  password: 'yupyup',
  nric: 'S1231233A',
  postal_code: '123125'
  )

puts "Done!"
