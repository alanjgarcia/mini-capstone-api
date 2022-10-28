class Product < ApplicationRecord
  validates :price, presence: true
  validates :price, numericality: { greater_than: 0 }
  validates :name, uniqueness: true
  validates :name, length: { minimum: 2 }
  validates :description, presence: true
  validates :description, length: { in: 2..5000 }

  belongs_to :supplier
  has_many :images
  has_many :orders
  has_many :category_products
  has_many :categories, through: :category_products
  # def supplier
  #   Supplier.find_by(id: supplier_id)
  # end

  def friendly_created_at
    created_at.strftime("%B %e, %Y")
  end

  def is_discounted?
    price <= 10
  end

  def tax
    price * 0.09
  end

  def total
    price + tax
  end
end
