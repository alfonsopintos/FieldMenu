class Field < ActiveRecord::Base
  belongs_to :client
  has_many :slots, :dependent => :destroy

  validates :max_people, presence: true
  validates :price, presence: true
end
