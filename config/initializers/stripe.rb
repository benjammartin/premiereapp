Stripe.api_key = ENV["STRIPE_API_KEY"]
STRIPE_PUBLIC_KEY = ENV["STRIPE_PUBLIC_KEY"]


StripeEvent.setup do
  subscribe 'customer.subscription.deleted' do |event|
    subscription = Subscription.find_by_stripe_customer_token(event.data.object.customer)
    subscription.update_attribute(:subscription_status, "inactive")
  end

  subscribe 'invoice.payment_succeeded' do |event|
    subscription = Subscription.find_by_stripe_customer_token(event.data.object.customer)
    InvoiceMailer.invoice_subscription(subscription).deliver
    end
end