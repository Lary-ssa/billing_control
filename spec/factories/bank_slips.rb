FactoryBot.define do
  factory :bank_slip do
    bar_code { "MyString" }
    client { nil }
    payer { nil }
    due_date { "2022-04-21" }
    amount { 1.5 }
    description { "MyText" }
  end
end
