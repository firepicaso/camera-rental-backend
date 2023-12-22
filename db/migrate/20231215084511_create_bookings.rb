class CreateBookings < ActiveRecord::Migration[7.1]
  def change
    create_table :bookings do |t|
      t.references :camera, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.datetime :booking_date

      t.timestamps
    end
  end
end
