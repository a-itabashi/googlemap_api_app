class Picture < ApplicationRecord
  validates :content, presence: true
  validates :content, presence: true
  mount_uploader :image, ImageUploader
end
