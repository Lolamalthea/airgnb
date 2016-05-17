class Weapon < ActiveRecord::Base
  belongs_to :user
  has_many :bookings

CATEGORIES = ["Kalach", "gun"]

  validates :name, presence: true
  # validates :category, inclusion: { in: CATEGORIES, allow_nil: false }
  # validates :address, presence: true
  validates :price, presence: true

  mount_uploader :picture, PhotoUploader
end
