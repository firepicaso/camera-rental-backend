class RenamePriceColumnInCameras < ActiveRecord::Migration[7.1]
  def change
    rename_column :cameras, :price, :daily_price
  end
end
