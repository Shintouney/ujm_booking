class Product < ApplicationRecord
  include AASM
  belongs_to :category
  has_many :booking_products
  has_many :bookings, through: :booking_products

  aasm column: :status do
    state :available, initial: true
    state :booked
    state :archived

    event :book do
      transitions from: %i(available), to: %i(booked)
    end

    event :archive do
      transitions from: %i(available booked), to: %i(archived)
    end
  end
end
