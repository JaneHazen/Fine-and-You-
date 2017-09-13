  require 'twilio-ruby'
  require 'rufus-scheduler'

class Input < ActiveRecord::Base
  belongs_to :users

  # after_create :queue

  def send_greeting_text(phone)
        client = Twilio::REST::Client.new(
    ENV['TWILLIO_SID'],
    ENV['TWILLIO_TOKEN']
    )

    client.messages.create(
      from: "[+1 402-817-7144]",
      to: phone,
      body: 'Thank you for registering.'
      )
  end

  def send_text(phone)

    client = Twilio::REST::Client.new(
    ENV['TWILLIO_SID'],
    ENV['TWILLIO_TOKEN']
    )

    client.messages.create(
      from: "[+1 402-817-7144]",
      to: phone,
      body: 'HELLO'
      )
  end


  # def recieved_input
  #   content_type 'text/xml'
  #   response = Twilio::TwiML::Response.new do |r|
  #       self.feel << r
  #       r.message "Thank you for your input"
  #   end
  # end


end
