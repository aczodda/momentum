class Feedback < ActiveRecord::Base
  belongs_to :user
  has_one :author
end
