FactoryGirl.define do
  factory :user, aliases: [:author] do
    email 'mickey@disney.com'
    password '12345678'
    first_name 'Mickey'
    last_name 'Mouse'
  end
end