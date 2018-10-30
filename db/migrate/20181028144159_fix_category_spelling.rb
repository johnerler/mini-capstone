class FixCategorySpelling < ActiveRecord::Migration[5.2]
  def change
    rename_column :category_vintage_guitars, :catagory_id, :category_id
  end
end
