class ChangeOrdersProductIdToVintageGuitarId < ActiveRecord::Migration[5.2]

  def change
    rename_column :orders, :product_id, :vintage_guitar_id
  end
end
