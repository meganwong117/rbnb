class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :dress
  validates :created_date, presence: true
  validates :end_date, presence: true
end
