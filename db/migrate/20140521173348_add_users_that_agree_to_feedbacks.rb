class AddUsersThatAgreeToFeedbacks < ActiveRecord::Migration
  def change
    add_column :feedbacks, :supporters, :string
  end
end