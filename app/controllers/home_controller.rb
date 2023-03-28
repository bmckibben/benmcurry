class HomeController < ApplicationController

  #skip_before_action :authenticate_user!
  
  def index
  	render layout: "home"
  end

  def contact
  	HomeMailer.new_message(params[:contact][:name],params[:contact][:email],params[:contact][:message]).deliver_now
  	@message = "Thank you for your message!"
  	respond_to do |format|
  		format.html {

  		}
  		format.js {
  			render("home/snackbar", locals: {message: @message})
  		}
  	end
  end

  def maint
    render layout: "application"
  end
end
