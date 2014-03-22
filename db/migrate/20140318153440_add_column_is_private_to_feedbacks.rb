class AddColumnIsPrivateToFeedbacks < ActiveRecord::Migration
  def change
    add_column :feedbacks, :is_private, :boolean
  end
end
