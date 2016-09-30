require 'twilio-ruby'
require 'dotenv'
Dotenv.load


class Message

  def initialize
    api_sid = 'AC71091e45b8b259664e487539658c839d'
    api_auth = '252d0d6447352f65aacd42e6870395bb'
    @client = Twilio::REST::Client.new api_sid, api_auth
  end

  def send_confirmation

     client.account.messages.create(
         :to => '+447756685861',
         :from => '+441234480277',
         :body => "Thank you! Your order was placed and will be delivered by #{Time.new + 60*60}"
     )
  end

  private
  attr_reader :client
end
