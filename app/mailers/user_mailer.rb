class UserMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.welcome_message.subject
  #
  def welcome_message
    @user = params[:user]
    @url = 'http://financeEdge.com/login'
    mail(to: @user.email, subject: "Confirmation Email")
  end
end
