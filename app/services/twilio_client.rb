class TwilioClient
  attr_reader :client

  def initialize customer
    @customer = customer
    @client = Twilio::REST::Client.new account_sid, auth_token
    send_message
  end

  def send_message
    begin
      @message = @client.messages.create(
        body: "Hello from Ruby, This message from Achyut Kadam.",
        to: @customer.contact,    # Replace with your phone number
        # from: "+919607180726"
        messaging_service_sid: message_service_sid
      )  # Replace with your Twilio number
    rescue Twilio::REST::TwilioError => e
      puts e.message
    end

    p"+++++++++++++++++++++++++"
    p"+++++++++++++++++++++++++"
    puts @message.inspect
    p"+++++++++++++++++++++++++"
    p"+++++++++++++++++++++++++"
  end


# @client = Twilio::REST::Client.new(account_sid, auth_token)
# message = @client.messages.create(
#                              body: 'this is the testing',
#                              from: '+919404804687',
#                              to: '+917030462978'
#                            )

# puts message.sid
  private

  def account_sid
    ""
  end

  def auth_token
    ""
  end

  def message_service_sid
    ""
  end
end
