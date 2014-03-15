class RemoveColumnFooFromFeedbacks < ActiveRecord::Migration
  def change
    remove_column :feedbacks, :foo, :string
  end
end
