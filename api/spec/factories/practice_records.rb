FactoryBot.define do
  factory :practice_record do
    practiced_date { Date.today }
    association :user
  end
end
