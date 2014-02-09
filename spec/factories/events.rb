# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :event do
    name "OutsidePlanets"
    date "2014-02-08"
    venue
    address "843 park rd. sf, ca 94382"
  end
end
