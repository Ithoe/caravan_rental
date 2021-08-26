class Booking < ApplicationRecord
  validates :start_date, :end_date, :status, :caravan_id, :user_id, :presence => true
  belongs_to :caravan
  belongs_to :user
end
