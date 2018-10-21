class ChangeDescriptionToText < ActiveRecord::Migration[5.2]
  def change
    change_column :vintage_guitars, :description, :text
  end
end
