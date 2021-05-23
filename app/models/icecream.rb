class Icecream < ApplicationRecord
  belongs_to :user
    has_one_attached :photo

  validates :category, :name, :description, :price, :photo, presence: true
end
