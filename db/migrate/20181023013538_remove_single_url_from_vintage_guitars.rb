class RemoveSingleUrlFromVintageGuitars < ActiveRecord::Migration[5.2]
  def change
    remove_column :vintage_guitars, :image_url
  end
end
