class UserMailer < ApplicationMailer

  def welcome(user)
    @user = user

    mail to: user.email, subject: 'Welcome to VOYC'
  end

  def buy(user)
    @user = user
    mail to: user.email, subject: 'VOYC shop'
  end
end
