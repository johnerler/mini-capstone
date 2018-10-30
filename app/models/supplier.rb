class Supplier < ApplicationRecord
  has_many :products
  # def products
  #   VintageGuitar.where(supplier_id: id)
  # end
end
