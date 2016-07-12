class JobsController < ApplicationController
  before_action :get_job, only: [:show, :edit, :update, :destroy]
  before_action :require_employee

  def index
    @jobs = Job.all.order('created_at DESC').search(params[:search])
  end


  def show
  end

  def new
    @job = Job.new
  end

  def edit
  end

  def create
    @job = Job.new(job_params)
    if @job.save
      redirect_to @job, notice: 'Job was successfully created.'
    else
      render :new
    end
  end

  def update
    if @job.update(job_params)
      redirect_to @job, notice: 'Job was successfully updated.'
    else
      render :edit 
    end

  end

  def destroy
    @job.destroy
    redirect_to jobs_url, notice: 'Job was successfully destroyed.'
  end

  private

    def get_job
      @job = Job.find(params[:id])
    end

    def job_params
      params.require(:job).permit(:name, :description, :company)
    end
end
