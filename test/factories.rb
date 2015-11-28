FactoryGirl.define do
  
  factory :user do
    sequence :email do |n|
      "yoloman#{n}@gmail.com"
    end
    password "omglolhahaha"
    password_confirmation "omglolhahaha"
  end
  
  factory :place do
    name "Lulu's Bakery"
    description "Try the cupcakes"
    address "123 Main St, USA"
    association :user
  end

  factory :comment do
	message "test comment"
	rating "1_star"
	association :user
	association :place
  end


end