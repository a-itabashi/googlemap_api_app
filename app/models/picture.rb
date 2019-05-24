class Picture < ApplicationRecord
  validates :content, presence: true
  validates :content, presence: true
  # validates :image, presence: true
  belongs_to :user
  has_many :favorites, dependent: :destroy
  has_many :favorite_users, through: :favorites, source: :user, dependent: :destroy
end
