class UserMailer < ActionMailer::Base
  default :from => "notifications@example.com"
  
  def expire_email(user)
    mail(:to => user.email, :subject => "Subscription Cancelled")
  end

  def create_email(user)
    mail(:to => user.email, :subject => "Bonjour")
  end
end