# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :step do
    name "MyString"
    description "MyText"
    video "MyString"
    support "MyText"
    aide "MyText"
    topic nil
    course nil
    user nil
  end
end
