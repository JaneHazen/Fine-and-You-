  require 'twilio-ruby'
  require 'whenever'

class Input < ActiveRecord::Base
  belongs_to :users

  def send_text

    client = Twilio::REST::Client.new(
    ENV['TWILLIO1'],
    ENV['TWILLIO2']
    )

    client.messages.create(
      from: "[+1 402-817-7144]",
      to: "[+1 402-405-1934]",
      body: "Ken is soooo cooooool."
      )
  end

  def recieved_input
    content_type 'text/xml'
    response = Twilio::TwiML::Response.new do |r|
        self.feel << r
        r.message "Thank you for your input"
    end

  #   response.to_xml
  end
  # Remember to create a migration!
end
