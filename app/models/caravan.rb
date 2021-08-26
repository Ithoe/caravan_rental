class Caravan < ApplicationRecord
  belongs_to :user
  has_many_attached :photos

  validates :name, :description, :built_year, :brand, :daily_rate, :photos, :presence => true
end
