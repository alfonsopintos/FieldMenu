class Client < ActiveRecord::Base
  has_many :fields, :dependent => :destroy

  validates :name, presence: true
  validates :address, presence: true
  validates :phone_number, presence: true
  validates :open_time, presence: true
  validates :close_time, presence: true
end
