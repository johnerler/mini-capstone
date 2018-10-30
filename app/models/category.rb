class Category < ApplicationRecord
  has_many :category_vintage_guitars
  has_many :vintage_guitars, through: :category_vintage_guitars
  # has_many :products
  # def products
  #   result = []
  #   category_vintage_guitars.each do |category_vintage_guitar|
  #     result << category_vintage_guitar.vintage_guitar
  #   end
  #   return result
    # category_vintage_guitars.map {|category_vintage_guitar| category_vintage_guitar}
    # end
end
