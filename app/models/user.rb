class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :bookings
  has_many :dresses
  has_many :incoming_bookings, through: :dresses, source: :bookings
  has_many :borrowed_dresses, through: :bookings, class_name:"Dress", source: :user
end
