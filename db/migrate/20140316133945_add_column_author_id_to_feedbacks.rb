class AddColumnAuthorIdToFeedbacks < ActiveRecord::Migration
  def change
    add_column :feedbacks, :author_id, :integer
  end
end
