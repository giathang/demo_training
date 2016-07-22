class AppliesController < ApplicationController
  def create
    @job = Job.find(params[:static_page_id])
    @apply = @job.applies.create(apply_params)
    if @apply.save
      flash[:info] = "You are apply success"
      redirect_to static_page_path(@job)
    else
      flash[:danger] = "You are apply fail"
      redirect_to static_page_path(@job)
    end
  end

  private

  def apply_params
    params.require(:apply).permit(:phone_number, :address, :current_company, :current_job,:attachment).merge(employer: current_user.email)
  end
end
