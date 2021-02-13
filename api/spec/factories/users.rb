FactoryBot.define do
  factory :user do
    sequence(:user_id) { |n| "TEST_USER_ID#{n}" }
    sequence(:user_name) { |n| "TEST_USER_NAME#{n}" }
    sequence(:email) { |n| "TEST_EMAIL#{n}@example.com" }
    sequence(:password) { |n| "TEST_PASSWORD#{n}" }
    sequence(:profile) { |n| "TEST_PROFILE#{n}" }
  end
end