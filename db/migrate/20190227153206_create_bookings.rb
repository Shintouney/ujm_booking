class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.string :email

      t.timestamps
      t.references :student, references: :student
    end
  end
end
