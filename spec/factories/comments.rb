FactoryBot.define do
  factory :comment do
    comment { "MyText" }
    email { "MyString" }
    article { nil }
  end
end
