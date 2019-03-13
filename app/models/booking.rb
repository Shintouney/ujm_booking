class Booking < ApplicationRecord
  include AASM
  has_many :booking_products
  has_many :products, through: :booking_products
  belongs_to :student
  validates :reservation_end_at, presence: true, allow_blank: false
  validate :reservation_start_at_datetime

  def reservation_start_at_datetime
    errors.add(:base, I18n.t('booking.errors.reservation_start_at')) if (reservation_start_at < Date.today)
  end

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
