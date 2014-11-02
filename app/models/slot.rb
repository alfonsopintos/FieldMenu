class Slot < ActiveRecord::Base
  belongs_to :field
  has_one :booking
end
