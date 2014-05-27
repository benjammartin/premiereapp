Stripe.api_key = ENV["STRIPE_API_KEY"]
STRIPE_PUBLIC_KEY = ENV["STRIPE_PUBLIC_KEY"]

StripeEvent.configure do |events|
  events.subscribe 'charge.failed', StripeEvents::ChargeFailed.new
  events.subscribe 'charge.succeeded', StripeEvents::ChargeSucceeded.new
  end
