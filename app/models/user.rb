class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
          :recoverable, :rememberable, :trackable, :validatable,
          :omniauthable
  include DeviseTokenAuth::Concerns::User

  validates :team_id, :presence => true
  validates :name, :presence => true
  # validates_associated :team

  belongs_to :team
end
