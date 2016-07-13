class StaticPagesController < ApplicationController

	def index
		@jobs = Job.order('created_at DESC').search(params[:search])
	end

	def show
		@job = Job.find(params[:id])
	end

end
