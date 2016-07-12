class UsersController < ApplicationController
  before_action :require_admin, only: [:index, :destroy]

	def index
    @users = User.all
  end

	def new
		@user = User.new
	end

	def create
		@user = User.new(user_params)
		if @user.save
			session[:user_id] = @user.id
			redirect_to root_path, notice: "Create account success!"
		else
			render :new
		end
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    flash[:info] = 'Destroy success'
    redirect_to admin_path
  end

	private

	def user_params
		params.require(:user).permit(:name, :email, :password, :password_confirmation)
	end
end
