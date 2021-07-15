class HomeController < ApplicationController
 
  # GET /homes or /homes.json
  def index
  
  end

  def contact
  	puts "~~~~~~~~~~~~~~~~~~~~~~~~~~"
  	puts params.inspect
  	puts "~~~~~~~~~~~~~~~~~~~~~~~~~~"
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
end
