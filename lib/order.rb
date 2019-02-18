require 'twilio-ruby'
require_relative "view"

class Order
include Print

attr_reader :order

  def initialize
    @order = []
  end

  def view_order
    total = 0
    order.each do |dish, price|
      total += price
      puts dish + "....." + "£" + sprintf('%.2f', price)
    end
    puts "\e[1;4;5mTotal:\e[0m" + "£" + sprintf('%.2f', total)
  end

  def place_order(order)
    t = Time.now + (60*30)
    ti = t.strftime("at %I:%M%p")
    account_sid = 'AC58ade16b5a9ba842f3145068615b64e2'
    auth_token = '208987ac3d417bf9b679af628c224ae5'
    client = Twilio::REST::Client.new(account_sid, auth_token)

    from = '+441354810054' # Your Twilio number
    to = '+447842018623' # Your mobile phone number

    client.messages.create(
    from: from,
    to: to,
    body: "Your order will arrive at #{ti}!"
    )
  end

end
