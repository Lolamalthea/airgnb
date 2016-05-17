class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :weapons
  has_many :bookings

  validates :name, presence: true
  validates :address, presence: true
  validates :email, presence: true, uniqueness: true
  validates :phone, presence:true, uniqueness: true

  mount_uploader :picture, PhotoUploader
end
