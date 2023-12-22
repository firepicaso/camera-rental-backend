class Camera < ApplicationRecord
   has_many :camera_images, dependent: :destroy
  self.inheritance_column = :_type_disabled
end
