class CreateCameras < ActiveRecord::Migration[7.1]
  def change
    create_table :cameras do |t|
      t.string :name
      t.string :image
      t.decimal :price
      t.string :type

      t.timestamps
    end
  end
end
