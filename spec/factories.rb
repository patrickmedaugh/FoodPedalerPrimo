FactoryGirl.define do
  factory :user do
    sequence(:email) { |n| "greenlantern#{n}@yahoo.com" }
    password "password"
    password_confirmation "password"
  end

  factory :product do
    price 1000
    sequence(:name) { |n| "sample#{n}" }
    description "Lorem ipsum"
    image_url "http://www.westliguria.net/wp-content/uploads/2013/01/image-not-found.jpg"
  end

  factory :subscription do
    user_id {[FactoryGirl.create(:user).id]}
    product_id {[FactoryGirl.create(:product).id]}
    frequency 1
  end
end
