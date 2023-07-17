FactoryBot.define do
  factory :tweet do
    title { Faker::JapaneseMedia::OnePiece.akuma_no_mi }
    content { Faker::JapaneseMedia::OnePiece.quote }
    user
  end
end