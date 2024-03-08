# Preview all emails at http://localhost:3000/rails/mailers/user_mailer
class UserMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/user_mailer/welcome_message
  # def welcome_message
  #   UserMailer.welcome_message
  # end
  def welcome_message
    user = User.new(first_name: "Joe", last_name: "smith", email: "info@melisport.com")

    UserMailer.with(user: user).welcome_message
end

end
