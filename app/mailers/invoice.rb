class InvoiceMailer < ActionMailer::Base

  def invoice_subscription(subscription)
    mail(:to => subscription.email, :subject => "My Subscription Invoice", :from => "invoice@mywebsite.com")
  end

end