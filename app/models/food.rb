class Food < ApplicationRecord

  belongs_to :user

  has_one_attached :photo

  validates :category, :name, :description, :price, :photo, presence: true

 # include PgSearch::Model
 #  pg_search_scope :search_by_name,
 #    against: [[ :name , 'A']],
 #    using: {
 #      tsearch: { prefix: true }
 #    }

end
