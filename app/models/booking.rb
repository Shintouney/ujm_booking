class Booking < ApplicationRecord
  include AASM
  has_many :booking_products
  has_many :products, through: :booking_products
  belongs_to :student

  aasm column: :status do
    state :pending, initial: true
    state :validated
    state :refused
    state :expired

    event :validate_booking do
      transitions from: %i(pending), to: %i(validated)
    end

    event :refuse_booking do
      transitions from: %i(pending), to: %i(refused)
    end

    event :expire_booking do
      transitions from: %i(validated), to: %i(expired)
    end
  end
end
