FactoryGirl.define do
  factory :question do
    criterion "transparency"
    text { Faker::Lorem.words(3).join(" ") }
    answer_type "binary"

    trait :binary do
      answer_type "binary"
      answers ["Sí", "No"]
      value 20.0
    end

    trait :open do
      answer_type "open"
      answers []
    end

    trait :rating do
      answer_type "rating"
      answer_rating_range "good"
      answers ["Muy bueno", "Bueno", "Regular", "Malo", "Muy malo"]
      value 20.0
    end

    trait :list do
      answer_type "list"
      answers ["Una", "Dos", "Tres", "Cuatro", "Cinco"]
    end
  end
end
