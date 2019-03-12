class Product < ApplicationRecord
  belongs_to :category
  has_many :booking_products
  has_many :bookings, through: :booking_products
end
