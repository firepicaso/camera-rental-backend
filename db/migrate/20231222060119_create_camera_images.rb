class CreateCameraImages < ActiveRecord::Migration[7.1]
  def change
    create_table :camera_images do |t|
      t.string :image
      t.references :camera, null: false, foreign_key: true

      t.timestamps
    end
  end
end
