class ProductType < ApplicationRecord
  validates :name, :presence => true
  validates :name, uniqueness: { scope: :team_id, message: " is already associated with this team", case_sensitive: false }

  validates :team_id, :presence => true
  validates_associated :team

  belongs_to :team
  has_many :products
end
