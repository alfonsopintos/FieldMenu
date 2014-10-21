class Field < ActiveRecord::Base
  belongs_to :client
  has_many :slots
end
