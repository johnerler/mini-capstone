class AddStockStatus < ActiveRecord::Migration[5.2]
  def change
    add_column :vintage_guitars, :stock_status, :string
  end
end
