class AddUserIdToBeginners < ActiveRecord::Migration[5.2]
  def change
    add_column :beginners, :user_id, :integer
  end
end
