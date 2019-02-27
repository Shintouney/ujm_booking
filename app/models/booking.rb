class Booking < ApplicationRecord
  include AASM
  has_many :categories

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
