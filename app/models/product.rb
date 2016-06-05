class Product < ApplicationRecord
  belongs_to :product_type

  validates :name, :presence => true
  validates :name, :uniqueness => true

  validates_associated :product_type
end
