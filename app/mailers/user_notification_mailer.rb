class UserNotificationMailer < ApplicationMailer
  
  def new_enquiry_notification(user)
    @user = user
    mail(to: user_email, subject: "A new enquiry has been made")
  end
end