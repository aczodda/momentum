FactoryGirl.define do
  factory :feedback do

    ignore do
      this_many_days_ago 21
    end
    
    message 'You are awesome'
    created_at { this_many_days_ago.days.ago }
    user
    author

  end
end
