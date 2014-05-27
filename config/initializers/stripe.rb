Stripe.api_key = ENV["STRIPE_API_KEY"]
STRIPE_PUBLIC_KEY = ENV["STRIPE_PUBLIC_KEY"]

class EmailEvent
  def call(event)
    Notifier.send_event_email(event).deliver
  end
end

class EmailJson
  def call(event)
    Notifier.send_json(event).deliver
  end
end

StripeEvent.configure do |events|
  events.subscribe 'customer.', EmailEvent.new
  events.subscribe 'invoice.',  EmailEvent.new
  events.subscribe 'transfer.', EmailJson.new
  events.subscribe 'plan.',     EmailJson.new
  events.subscribe 'coupon.',   EmailJson.new
  events.subscribe 'charge.',   EmailJson.new
  events.subscribe 'account.',  EmailJson.new
end