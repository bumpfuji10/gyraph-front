FactoryBot.define do
  factory :practice_detail do
    title { "練習" }
    content { "まぁまぁだった" }
    association :practice_record
  end
end
