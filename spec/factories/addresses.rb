FactoryBot.define do
  factory :address do
    street { "MyString" }
    city { "MyString" }
    state { "MyString" }
    zip { "MyString" }
    client_id { 1 }
  end
end
