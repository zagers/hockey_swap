FactoryGirl.define do
  factory :user do
    name      "Scott Zager"
    email     "scott@example.com"
    password  "foobar"
    password_confirmation "foobar"
  end
end