# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create([{
  name: 'Admin',
  email: 'admin@gmail.com',
  password: 'qwerty',
  password_confirmation: 'qwerty',
  admin: true
  }])

Classe.create([{
  classe: "4th",
  stage: "Primary",
  description: Faker::Lorem.paragraph
  }])

Classe.create([{
  classe: "11th",
  stage: "Higher Secondary",
  description: Faker::Lorem.paragraph
  }])

Classe.create([{
  classe: "8th",
  stage: "Secondary",
  description: Faker::Lorem.paragraph
  }])

Fee.create([{
  admission_fee: 25000,
  annual_fee: 25000,
  caution_money: 5000,
  tution_fee: 40000,
  almanac_fee: 10000,
  total_fee: 105000
  }])

Section.create([{
  section_name:"A",
  classe_id:"2"
  }])

Section.create([{
  section_name:"B",
  classe_id:"3"
  }])

Student.create([{
  name: "Aniket Das",
  birth_date: "08/12/2002",
  age: 17,
  academic_year: 2020,
  father_name: "Amit Das",
  mother_name: "Riya Das",
  address: Faker::Lorem.paragraph,
  contact: 1234567890,
  classe_id: 3,
  email: "aniket@gmail.com"
  }])
