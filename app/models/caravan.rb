class Caravan < ApplicationRecord
  belongs_to :user
  has_many_attached :photos
  has_many :bookings
  validates :name, :description, :built_year, :brand, :daily_rate, :photos, presence: true

  include PgSearch::Model
  pg_search_scope :search_by_name,
  against: [ :name ],
  using: {
    tsearch: { prefix: true }
  }

  pg_search_scope :search_by_description,
  against: [:description ],
  using: {
    tsearch: { prefix: true }
  }

  pg_search_scope :search_by_built_year,
  against: [:built_year ],
  using: {
    tsearch: { prefix: true }
  }

end
