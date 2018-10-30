class VintageGuitar < ApplicationRecord
  has_many :orders
  belongs_to :supplier
  # def supplier
  #   Supplier.find_by(id: supplier_id)
  # end
  has_many :category_vintage_guitars
  has_many :categories, through: :category_vintage_guitars

  validates :name, presence: true
  validates :name, uniqueness: true
  validates :price, presence: true
  validates :price, numericality: {greater_than: 0}
  validates :description, length: { in: 5..500 } 

  def is_discounted?
    price < 5000 
  end

  def tax
    price * 0.09
  end

  def total
    price + tax
  end

  has_many :images
  # def images
  #   Image.where(product_id: id)
  # end

  def image_url_list
    list = []
    images.each do |image|
      list << image.url 
    end
    list
  end
  # images.map { |image| image.url }

end




