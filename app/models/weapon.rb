class Weapon < ActiveRecord::Base
  belongs_to :user
  has_many :bookings

CATEGORIES = ["Any stuff available", "Hand gun", "Assault riffle", "Light automatic", "Heavy weapon"]

  validates :name, presence: true
  # validates :category, inclusion: { in: CATEGORIES, allow_nil: false }
  # validates :address, presence: true
  validates :price, presence: true

  mount_uploader :picture, PhotoUploader

  geocoded_by :address
  after_validation :geocode, if: :address_changed?

end
