require 'message'
require 'twilio-ruby'

describe Message do

  subject (:message) {described_class.new}

  it{ is_expected.to respond_to (:send_confirmation) }


  xit 'sends a confirmation sms when the order is paid for' do
    expect(message.send_confirmation).to eq "Thank you! Your order was placed and will be delivered before #{(Time.new )+ (60*60)}"
  end


end
