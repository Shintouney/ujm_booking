class CreateBookingProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :booking_products, id: false do |t|
      t.references :product, index: true, foreign_key: true
      t.references :booking, index: true, foreign_key: true
    end
  end
end
