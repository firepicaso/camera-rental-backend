class AddDescriptionToCameras < ActiveRecord::Migration[7.1]
  def change
    add_column :cameras, :description, :text
  end
end
