class Dress < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy
  has_many_attached :photos
  validates :photos, presence: true
  CURRENCIES = ["GBP", "EUR", "AED", "USD"]
  EVENT_TYPES = ["Bridal", "Wedding", "Cocktail Party"]
  validates :currency, inclusion: {in: CURRENCIES}
  validates :event_type, inclusion: {in: EVENT_TYPES}
end
