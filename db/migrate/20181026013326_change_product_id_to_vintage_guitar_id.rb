class ChangeProductIdToVintageGuitarId < ActiveRecord::Migration[5.2]
  def change
    rename_column :images, :product_id, :vintage_guitar_id
  end
end
