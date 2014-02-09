# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user do
    username "cyborg43"
    name "Mega Man"
    email "cool@weird.com"
    password_hash "asdf"
    password_salt "jkl;"
  end
end
