class AddColumnFooToFeedbacks < ActiveRecord::Migration
  def change
    add_column :feedbacks, :foo, :string
  end
end
