FactoryBot.define do
  factory :random_user, class: User do
    email { Faker::Internet.unique.email }
    password { Faker::Internet.unique.password(8) }
    username { 'user_' + Faker::Name.unique.first_name }
  end
end