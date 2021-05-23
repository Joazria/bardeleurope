class User < ApplicationRecord

  has_many :drinks
  has_many :foods
  has_many :icecreams

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
