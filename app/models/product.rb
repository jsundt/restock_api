class Product < ApplicationRecord
  validates :name, :presence => true
  validates :name, :uniqueness => true

  validates :product_type_id, :presence => true
  validates_associated :product_type

  belongs_to :product_type
end
