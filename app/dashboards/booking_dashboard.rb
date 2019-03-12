require "administrate/base_dashboard"

class BookingDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    student:             Field::BelongsTo,
    reservation_end_at:  Field::DateTime,
    created_at:          Field::DateTime,
    products:            Field::HasMany
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [
    :student,
    :reservation_end_at,
    :created_at,
    :products
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :created_at,
    :student,
    :reservation_end_at,
    :products
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :student,
    :reservation_end_at,
    :products
  ].freeze

  # Overwrite this method to customize how bookings are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(booking)
  #   "Booking ##{booking.id}"
  # end
end
