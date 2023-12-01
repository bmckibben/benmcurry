class ApplicationController < ActionController::Base
	#before_action :authenticate_user!
	@decendents = ""
	def not_found
          raise ActionController::RoutingError.new('Not Found')
        end 	
	private
	def testor
		puts "~~~~~~WTF~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
	end
end
