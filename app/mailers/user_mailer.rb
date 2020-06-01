class UserMailer < ApplicationMailer
  def send_mail(user)
    @user = user
    mail(to: 'hheflerdevelopment@gmail.com', subject:'Email Received')
  end
end
