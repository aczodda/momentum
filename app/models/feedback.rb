class Feedback < ActiveRecord::Base
  belongs_to :user
  belongs_to :author, class_name: 'User'

  validates_presence_of :message
end
