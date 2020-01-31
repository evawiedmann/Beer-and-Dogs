FactoryBot.define do
  factory :user do
    name { "MyString" }
    email { "MyString" }
    password_digest { "MyString" }
  end

  factory(:brewery) do
    name {'Monk'}
    street {'Jesus st'}
    city {'Priestville'}
    zip {666}
    outdoor {'bethleham'}
    park_nearby {'Mount Olympus'}
    dog_friendly {'cerberus'}
    state {'dead'}
  end
end
