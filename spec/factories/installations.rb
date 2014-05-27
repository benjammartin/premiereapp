# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :installation do
    name "MyString"
    description "MyText"
    video "MyString"
    support "MyText"
    aide "MyText"
  end
end
