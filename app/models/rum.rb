class Rum < ApplicationRecord

  validates :name, presence: {message:'は、必須項目です'}
  mount_uploader :image, ImageUploader

end
