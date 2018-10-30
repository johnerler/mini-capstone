class AddUserIdToVintageGuitars < ActiveRecord::Migration[5.2]
  def change
    add_column :vintage_guitars, :user_id, :integer
  end
end
