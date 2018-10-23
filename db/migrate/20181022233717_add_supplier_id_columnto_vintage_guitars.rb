class AddSupplierIdColumntoVintageGuitars < ActiveRecord::Migration[5.2]
  def change
    add_column :vintage_guitars, :supplier_id, :integer
  end
end
