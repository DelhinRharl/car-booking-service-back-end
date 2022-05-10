# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Car.create(make: "Lamborghini", model: "Huracan Tecnica", year: 2022, image: "https://www.mad4wheels.com/img/free-car-images/mobile/19531/lamborghini-huracan-tecnica-2023-669688.jpg", price: "7500000")
Car.create(make: "Bentley", model: "Mulsanne", year: 2016, image: "https://www.mad4wheels.com/img/free-car-images/mobile/15357/bentley-mulsanne-2016-442896.jpg", price: "80000000")
Car.create(make: "Rolls-Royce", model: "Koa Phantom", year: 2021, image: "https://www.mad4wheels.com/img/free-car-images/mobile/18701/rolls-royce-koa-phantom-2021-621780.jpg", price: "10000000")
Car.create(make: "Ferari", model: "Portofino M", year: 2021, image: "https://www.mad4wheels.com/img/free-car-images/mobile/18332/ferrari-portofino-m-2021-600097.jpg", price: "6000000")
Car.create(make: "Lamborghini", model: "Urus Pearl Capsule", year: 2022, image: "https://www.mad4wheels.com/img/free-car-images/mobile/18110/lamborghini-urus-pearl-capsule-2021-588716.jpg", price: "4000000")
Car.create(make: "Pagani", model: "Huayra", year: 2011, image: "https://www.mad4wheels.com/img/free-car-images/mobile/7702/pagani-huayra-2011-368626.jpg", price: "3000000")
Car.create(make: "Porsche", model: "Taycan Turbo S", year: 2020, image: "https://www.mad4wheels.com/img/free-car-images/mobile/17540/porsche-taycan-turbo-s-2020-563090.jpg", price: "900000")
Car.create(make: "McLaren", model: "P1", year: 2015, image: "https://www.mad4wheels.com/img/free-car-images/mobile/14776/mclaren-p1-gtr-test-car-2015-472219.jpg", price: "2500000")

User.create(name: "John")
User.create(name: "Aiden", admin: true)
User.create(name: "Randy")
User.create(name: "Theodore")
User.create(name: "Joe", admin: true)
