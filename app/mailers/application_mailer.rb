class ApplicationMailer < ActionMailer::Base
  default from: 'from@example.com'
  layout 'mailer'

  def user_email
    'yogichoudhary9715@gmail.com'
  end 
end
