class SessionsController < ApplicationController
	skip_before_filter :authorize
  
  def new
  	render :action => 'new', :layout => 'login'
  end

  def create
		if user = User.authenticate(params[:name],params[:password])
			session[:user_id]=user.id
			session[:user_name]=user.name
			redirect_to admin_url
		else
			redirect_to login_url, :alert=>"Invalid Password / Username combination"
		end
  end

  def destroy
		reset_session
		redirect_to login_url, :notice=>"Successfully logout!"

  end

end
