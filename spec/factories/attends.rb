# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :attend do
    artist
    event
    user
    rating 1
    review "Out of this world!"
    date "2014-02-08"
  end
end
