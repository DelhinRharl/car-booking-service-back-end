FactoryBot.define do
  factory :car do
    make { 'Lamborghini' }
    model { 'Huracan Tecnica' }
    year { 2022 }
    image { 'https://www.sky-g.org/lamborghini/wp/wp-content/uploads/2022/04/hp_tecnica_00.png' }
    price { '7500000' }
  end
end
