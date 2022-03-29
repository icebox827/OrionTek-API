FactoryBot.define do
  factory :client do
    first_name { "MyString" }
    last_name { "MyString" }
    email { "MyString" }
    phone { "MyString" }
    company_id { 1 }
  end
end
