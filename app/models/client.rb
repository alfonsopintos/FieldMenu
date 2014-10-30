class Client < ActiveRecord::Base
  has_many :fields, :dependent => :destroy

  validates :name, presence: true
  validates :address, presence: true
  validates :phone_number, presence: true
  validates :open_time, presence: true
  validates :close_time, presence: true

  has_attached_file :avatar, :styles => { :large => "500x500>", :medium => "375x375>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/
  validates_attachment :avatar, :content_type => { :content_type => ["image/jpeg", "image/gif", "image/png"] }
end
