class ApplicationController < ActionController::Base
	before_filter	:authorize
	before_filter :set_cache_buster

	def set_cache_buster
		response.headers["Cache-Control"] = "no-cache, no-store, max-age=0, must-revalidate"
	    response.headers["Pragma"] = "no-cache"
	    response.headers["Expires"] = "Fri, 01 Jan 1990 00:00:00 GMT"
	end
  	protect_from_forgery

	private
	def authorize
		unless User.find_by_id(session[:user_id])
			redirect_to login_url, :alert=>"Please	 Login"
		end
	end

	def after_sign_in_path_for(resource)
  		root_path
	end

end
