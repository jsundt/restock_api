class ProductType < ApplicationRecord
  belongs_to :user
  has_many :products

  validates :name, :presence => true
  validates :name, uniqueness: { scope: :user_id, message: " is already associated with this user", case_sensitive: false }

  validates_associated :user
end
