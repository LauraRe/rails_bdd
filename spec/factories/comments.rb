FactoryBot.define do
  factory :comment do
    comment { "MyText" }
    email { "MyString" }
    article { FactoryBot.create(:article) }
  end
end
