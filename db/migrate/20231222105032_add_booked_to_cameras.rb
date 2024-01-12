class AddBookedToCameras < ActiveRecord::Migration[7.1]
  def change
    add_column :cameras, :booked, :boolean
  end
end
