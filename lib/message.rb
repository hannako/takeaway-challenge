require 'twilio-ruby'
require 'dotenv'
Dotenv.load


class Message

  def initialize
    api_sid = ENV.fetch('TWILIO_ACCOUNT_SID')
    api_auth = ENV.fetch('TWILIO_ACCOUNT_AUTH')
    @client = Twilio::REST::Client.new api_sid, api_auth
  end

  def send_confirmation

     client.account.messages.create(
         :to => '+447756685861',
         :from => '+441631402037',
         :body => "Thank you! Your order was placed and will be delivered before #{((Time.new.hour) + 1)}:#{Time.new.min}"
     )
  end

  private
  attr_reader :client
end
