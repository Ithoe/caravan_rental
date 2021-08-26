class Caravan < ApplicationRecord
  belongs_to :user
  has_many_attached :photos
  has_many :bookings

  validates :name, :description, :built_year, :brand, :daily_rate, :photos, :presence => true
end
