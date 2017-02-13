class JobController < ApplicationController

  def new
    @job = Job.new
  end

  def create
    @job = Job.create(params.require(:job).permit(:title,
    :location, :category, :company, :description))
  end

  def show
    @jobs = Job.all
  end

end
