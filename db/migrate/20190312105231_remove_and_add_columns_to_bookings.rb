class RemoveAndAddColumnsToBookings < ActiveRecord::Migration[5.2]
  def change
    remove_column :bookings, :email
    add_column :bookings, :reservation_end_at, :datetime
  end
end
