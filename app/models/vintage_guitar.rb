class VintageGuitar < ApplicationRecord
  def is_discounted?
    price < 5000 
  end

  def tax
    price * 0.09
  end

  def total
    price + tax
  end
end



