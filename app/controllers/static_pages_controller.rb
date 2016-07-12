class StaticPagesController < ApplicationController
  before_action :require_admin, only: :admin
	def index
		@jobs = Job.all.order('created_at DESC').search(params[:search])
	end

	def show
		@job = Job.find(params[:id])
	end

	def admin
    @users = User.all
	end

end
