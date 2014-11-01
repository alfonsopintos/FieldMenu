class Slot < ActiveRecord::Base
  belongs_to :field
  has_one :booking
  has_many :users, through: :bookings
end
