FactoryGirl.define do
  factory :attend do
    date "September 9, 2014"
    review "it went well"
    rating "5"
    picture "picture5"
    user
    event
    artist
    venue
  end
end