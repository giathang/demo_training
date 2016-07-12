class SessionsController < ApplicationController
	def new
	end
	def create
		@user = User.find_by(email: params[:user][:email])
		if @user && @user.authenticate(params[:user][:password])
			session[:user_id] = @user.id
			if @user.user_type == 'employee'
				redirect_to jobs_path, notice: 'Login success'
			else
				redirect_to root_path , notice: 'Login success'
			end
		else
			render :new
		end
	end
	def destroy
		session.destroy
		redirect_to root_path, notice: 'Logout success'
	end
end
