# Read about factories at http://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :following do
      follower_id 1
      followee_id 1
    end
end