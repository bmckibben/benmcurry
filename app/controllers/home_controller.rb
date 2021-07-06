class HomeController < ApplicationController
 
  # GET /homes or /homes.json
  def index
        respond_to do |format|
	        format.html 
	        format.text
	        format.js {
	          render(locals: {message: message, type: type})
	        } 
        end   
  end

end
