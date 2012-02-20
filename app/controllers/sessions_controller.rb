class SessionsController < ApplicationController
	skip_before_filter :authorize

  def new
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
		session[:user_id]=nil
		redirect_to login_url, :alert=>"Successfully logout"
  end

end
