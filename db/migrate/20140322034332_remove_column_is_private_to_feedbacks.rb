class RemoveColumnIsPrivateToFeedbacks < ActiveRecord::Migration
  def change
    remove_column :feedbacks, :is_private, :boolean
  end
end
