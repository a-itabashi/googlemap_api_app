class Picture < ApplicationRecord
  # before_save :geocode_full_address
  
  validates :content, presence: true
  validates :content, presence: true
  # validates :image, presence: true
  belongs_to :user
  has_many :favorites, dependent: :destroy
  has_many :favorite_users, through: :favorites, source: :user, dependent: :destroy
  mount_uploader :image, ImageUploader

  # def geocode_full_address
  #   coords = Geocoder.coordinates(
  #     self.prefecture + self.city + self.address # 県名 + 市町村名 + 丁目番地
  #   )
  #   self.latitude = coords[0]
  #   self.longitude = coords[1]
  # end
end
