class AdminsController < ApplicationController
  before_action :require_admin
  before_action :get_user, only: [:show, :edit, :update, :destroy]

  def index
    @users = User.all.search(params[:search])
  end

  def show
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to admins_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @user.update(user_params)
      flash[:info] = 'Update User success'
      redirect_to admins_path
    else
      render :edit
    end
  end

  def destroy
    @user.destroy
    flash[:info] = 'Delete user success'
    redirect_to admins_path

  end

  private

  def get_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:email, :password, :user_type)
  end

end
