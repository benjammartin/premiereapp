class UserMailer < ActionMailer::Base
  default :from => "notifications@example.com"

  def registration_confirmation(user)
    @user = user
    mail(:to => "#{user.name} <#{user.email}>", :subject => "Registered")
  end
  
  def expire_email(user)
    mail(:to => user.email, :subject => "Subscription Cancelled")
  end
end