class Booking < ActiveRecord::Base
  belongs_to :user
  belongs_to :slot

  validates :name, presence: true
  validates :email, presence: true
  validates :phone, presence: true
end
