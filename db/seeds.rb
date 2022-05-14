# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Car.create(make: "Lamborghini", model: "Huracan Tecnica", year: 2022, image: "https://www.sky-g.org/lamborghini/wp/wp-content/uploads/2022/04/hp_tecnica_00.png", price: "7500000",
description: 'The latest member of the Huracán range provides the purest Lamborghini driving experience combined with the freedom of everyday use: a bridge between past and future, lifestyle and performance, road and track. Huracán Tecnica brings forth a pilot’s attitude in every driver, delivering the most rewarding performance and the ultimate, fun-to-drive experience — simultaneously. Unleash the unique character of the most versatile Huracán.')
Car.create(make: "Bentley", model: "Mulsanne", year: 2016, image: "https://www.alpineco.com/images/farm1/1237x563/a56b4b98e4b45be2ecae1879911080ec.png", price: "80000000",
description: 'The Mulsanne is a sports car produced by Bentley. It is the successor to the Bentley Bentayga, which was introduced in 2010. The Mulsanne is a sports car produced by Bentley. It is the successor to the Bentley Bentayga, which was introduced in 2010.')
Car.create(make: "Rolls-Royce", model: "Koa Phantom", year: 2021, image: "https://thecommerceafrica.com/wp-content/uploads/2021/04/2020-Rolls-Royce-Wraith-white-full_color-driver_side_front_quarter.png", price: "10000000",
description: 'The Koa Phantom is a sports car produced by Rolls-Royce. It is the successor to the Rolls-Royce Wraith, which was introduced in 2010. The Koa Phantom is a sports car produced by Rolls-Royce. It is the successor to the Rolls-Royce Wraith, which was introduced in 2010.')
Car.create(make: "Ferari", model: "Portofino M", year: 2021, image: "https://cdn.wheel-size.com/automobile/body/ferrari-portofino-m-2020-2021-1606213016.4083874.webp", price: "6000000",
description: 'The Portofino M is a sports car produced by Ferrari. It is the successor to the Ferrari Portofino, which was introduced in 2010. The Portofino M is a sports car produced by Ferrari. It is the successor to the Ferrari Portofino, which was introduced in 2010.')
Car.create(make: "Lamborghini", model: "Urus Pearl Capsule", year: 2022, image: "https://www.stage.lamborghini.com/sites/it-en/files/DAM/lamborghini/facelift_2019/homepage/families-gallery/mobile/Urus_pearl%20capsule-black_caliper-sceneplate_env.png", price: "4000000",
description: 'The Urus Pearl Capsule is a sports car produced by Lamborghini. It is the successor to the Lamborghini Urus, which was introduced in 2010. The Urus Pearl Capsule is a sports car produced by Lamborghini. It is the successor to the Lamborghini Urus, which was introduced in 2010.')
Car.create(make: "Pagani", model: "Huayra", year: 2011, image: "https://csr2crews.com/assets/img/car_icons/Pagani_Huayra.png", price: "3000000",
description: 'The Huayra is a sports car produced by Pagani. It is the successor to the Pagani Zonda F, which was introduced in 2010. The Huayra is a sports car produced by Pagani. It is the successor to the Pagani Zonda F, which was introduced in 2010.')
Car.create(make: "Porsche", model: "Taycan Turbo S", year: 2020, image: "https://www.porsche-rolf.ru/photos/cars/custom/486934_lNdoOJuUBxMulQTcdYpk34SggDdRVYhm.jpg.optimized.png", price: "900000",
description: 'The Taycan Turbo S is a sports car produced by Porsche. It is the successor to the Porsche Taycan, which was introduced in 2010. The Taycan Turbo S is a sports car produced by Porsche. It is the successor to the Porsche Taycan, which was introduced in 2010.')
Car.create(make: "McLaren", model: "P1", year: 2015, image: "https://static.wikia.nocookie.net/forzamotorsport/images/b/bd/HOR_XB1_McLaren_P1.png", price: "2500000",
description: 'The P1 is a sports car produced by McLaren. It is the successor to the McLaren MP4-12C, which was introduced in 2010. The P1 is a sports car produced by McLaren. It is the successor to the McLaren MP4-12C, which was introduced in 2010.')

User.create(name: "John", email: "john@example.com", password: "123456")
User.create(name: "Aiden", email: "aiden@example.com", password: "123456", admin: true)
User.create(name: "Randy", email: "randy@example.com", password: "123456")
User.create(name: "Theodore", email: "theo@example.com", password: "123456")
User.create(name: "Joe", email: "joe@example.com", password: "123456", admin: true)

Reservation.create(user_id: 1, car_id: 1, city: 'London')
Reservation.create(user_id: 2, car_id: 2, city: 'Dubai')
Reservation.create(user_id: 3, car_id: 3, city: 'Tokyo')
Reservation.create(user_id: 4, car_id: 4, city: 'Paris')
Reservation.create(user_id: 5, car_id: 5, city: 'Berlin')
