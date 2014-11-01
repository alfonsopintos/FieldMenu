class Booking < ActiveRecord::Base
  belongs_to :user
  belongs_to :slot

  validates :name, presence: true
  validates :email, presence: true
  validates :phone, presence: true

  after_create :confirm_booking



  def confirm_booking 
  
    account_sid = "AC09647c1a2a2643b78e978b93840282b6"
    auth_token = "52f4730f1c2800bcd8836c950243366d"
    number_to_send_to = self.phone
    twilio_phone_number = "(786) 420-6464"
    @twilio_client = Twilio::REST::Client.new account_sid, auth_token
    @twilio_client.account.sms.messages.create(
    :from => twilio_phone_number,
    :to => number_to_send_to,
    :body => "Booking Confirmed")

  end

end
