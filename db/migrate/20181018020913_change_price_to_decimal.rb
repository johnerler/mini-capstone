class ChangePriceToDecimal < ActiveRecord::Migration[5.2]
  def change
    change_column :vintage_guitars, :price, :decimal, precision: 9, scale: 2
  end
end
