# Preview all emails at http://localhost:3000/rails/mailers/user_mailer
class UserMailerPreview < ActionMailer::Preview
  def new_order_email
    # Set up a temporary order for the preview
    user = User.new(email: "joe@gmail.com", text: "I want to place an order!")
    UserMailer.with(user: user).new_user_email
  end
end
