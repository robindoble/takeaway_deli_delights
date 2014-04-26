require 'twilio-ruby' 

module Twilio
 
# put your own credentials here

def send_sms(text_message)

account_sid = 'ACa89e6a9c2113717f73b797701cbdd33d' 
auth_token = '9b2522a85e8fec58726b782a4dd5781a' 
 
# set up a client to talk to the Twilio REST API 
@client = Twilio::REST::Client.new account_sid, auth_token 
 
# @client.account.messages.create({
# 	:from => '+441332402863',    
# })

message = @client.account.messages.create(:body => "#{text_message}",
    :to => '+447946185416',
    :from => '+441332402863')
    # :media_url => "http://www.example.com/hearts.png")
puts message.to

# ACa89e6a9c2113717f73b797701cbdd33d
#  9b2522a85e8fec58726b782a4dd5781a
#+441332402863
end

end