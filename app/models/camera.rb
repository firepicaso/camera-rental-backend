class Camera < ApplicationRecord
  has_many_attached :images
  #  accepts_nested_attributes_for :camera_images

  self.inheritance_column = :_type_disabled
end
