class CreateCategoryVintageGuitars < ActiveRecord::Migration[5.2]
  def change
    create_table :category_vintage_guitars do |t|
      t.integer :vintage_guitar_id
      t.integer :catagory_id

      t.timestamps
    end
  end
end
