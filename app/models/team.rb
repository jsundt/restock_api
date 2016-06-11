class Team < ApplicationRecord
  # after_destroy :destroy_products

  validates :name, :presence => true
  validates :name, :uniqueness => true
  validates :secret, :presence => true, on: :create

  has_many :product_types, dependent: :destroy
  has_many :products, through: :product_types

  has_many :users, dependent: :destroy


  private

  #  def destroy_products
  #    self.products.delete_all
  #  end
end
