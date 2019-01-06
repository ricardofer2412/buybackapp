class BuyBack < ApplicationRecord

  has_many :devices, dependent: :destroy
  accepts_nested_attributes_for :devices, allow_destroy: :true

  mount_uploader :image, ImageUploader
end
