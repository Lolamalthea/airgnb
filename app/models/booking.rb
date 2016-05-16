class Booking < ActiveRecord::Base
  belongs_to :user
  belongs_to :weapon

  validates :start_date_on, presence: true
  validates :end_date_on, presence: true
end
