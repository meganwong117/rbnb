class Dress < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_many_attached :photos
  validates :photos, presence: true
  CURRENCIES = ["GBP", "EUR", "AED", "USD"]
  validates :currency, inclusion: {in: CURRENCIES}
end
