class Image < ApplicationRecord
  # def vintage_guitar
  #   VintageGuitar.find_by(id: product_id)
  # end
  belongs_to :vintage_guitar
end
