class AddStartedBookingTimeColumnsToBooking < ActiveRecord::Migration[5.2]
  def change
    add_column :bookings, :reservation_start_at, :datetime
  end
end
