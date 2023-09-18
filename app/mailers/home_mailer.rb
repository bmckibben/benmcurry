class HomeMailer < ActionMailer::Base
  def new_message(name, email, message)
    @email = email
    @message = message
    @name = name
    mail subject: 'email for Ben Curry', to: "contact@BenMCurry.com", reply_to: @email
  end
end
