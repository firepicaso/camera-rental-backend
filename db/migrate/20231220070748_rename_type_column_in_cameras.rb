class RenameTypeColumnInCameras < ActiveRecord::Migration[7.1]
   def change
    rename_column :cameras, :type, :camera_type
  end
end
