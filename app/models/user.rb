class User < ApplicationRecord
  has_many :bookings
  has_many :caravans
  has_many :caravan_bookings, through: :caravans, source: :bookings
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates :first_name, presence: true
  validates :last_name, presence: true
  #  validates :email, format: { with: ^[A-Za-z0-9+_.-]+@[A-Za-z0-9.-]+$ }
end
