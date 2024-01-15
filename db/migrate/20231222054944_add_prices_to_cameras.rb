class AddPricesToCameras < ActiveRecord::Migration[6.0]
  def change
    add_column :cameras, :weekly_price, :decimal, precision: 10, scale: 2
    add_column :cameras, :two_week_price, :decimal, precision: 10, scale: 2
    add_column :cameras, :three_week_price, :decimal, precision: 10, scale: 2
    add_column :cameras, :four_week_price, :decimal, precision: 10, scale: 2
  end
end
