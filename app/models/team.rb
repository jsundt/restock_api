class Team < ApplicationRecord
  validates :name, :presence => true
  validates :name, :uniqueness => true
  validates :secret, :presence => true, on: :create

  has_many :product_types
  has_many :products, through: :product_types

  has_many :users
end
