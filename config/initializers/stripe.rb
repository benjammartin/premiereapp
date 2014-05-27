Stripe.api_key = ENV["STRIPE_API_KEY"]
STRIPE_PUBLIC_KEY = ENV["STRIPE_PUBLIC_KEY"]



StripeEvent.setup do

	 subscribe 'invoice.payment_failed' do |event|
    puts "Received Stripe Event 'invoice.payment_failed'"
    StripeWebhooks.payment_failed(event.data.object.customer)
  end


	subscribe 'invoice.payment_succeeded' do |event|
    puts "Received Stripe Event 'invoice.payment_succeeded'"
    StripeWebhooks.payment_succeeded(event.data.object.customer)
     end

	subscribe 'customer.subscription.created' do |event|
    puts "Received Stripe Event 'customer.subscription.created'"
    StripeWebhooks.subscription_created(event.data.object.customer)
  end
  


  subscribe 'customer.subscription.deleted' do |event|
    user = User.find_by_customer_id(event.data.object.customer)
    user.expire
  end
end