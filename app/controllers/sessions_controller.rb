class SessionsController < ApplicationController
  def new
  end

  def create
  	user = User.authenticate(params[:session][:email_address], params[:session][:password])
    puts user.nil?
  	if user.nil?
  		flash.now[:error] = "Invalid email/password combination."
  		render :new
  	else
  		sign_in user
  		redirect_to user
  		# redirect_to user
  	end
  end

  def destroy
  	sign_out
  	redirect_to '/homes/index'  #i need to write where i want to redirect users after they sign out!
  end
end
