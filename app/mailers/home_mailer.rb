class HomeMailer < ActionMailer::Base
  def new_message(name, email, message)
    @email = email
    @message = message
    @name = name
    attachments["robot.txt] = File.open("#{Rails.root}/public/robots.txt")
    mail subject: 'email for Ben Curry', to: "contact@BenMCurry.com", reply_to: @email, from: @email
  end
end
