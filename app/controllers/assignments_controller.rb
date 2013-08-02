class AssignmentsController < ApplicationController
before_filter :authenticate_user!
  def index
    @assignment = Assignment.find(:all)
  end

  def new
    @assignment = Assignment.new
    @assignment.biopsy = Biopsy.find(params[:biopsy_id])
    @eligible_doctors = Doctor.eligible_doctors(
      {:state_name => @assignment.biopsy.state_name,
       :insurance_name => @assignment.biopsy.insurance_name})

  end

  def create
    @assignment = Assignment.new(params[:assignment])
    if @assignment.save
      redirect_to assignments_path
    else
      render "new"
      @assignment.biopsy = Biopsy.find(params[:biopsy_id])
      @eligible_doctors = Doctor.eligible_doctors(
      {:state_name => @assignment.biopsy.state_name,
       :insurance_name => @assignment.biopsy.insurance_name})
    end
  end

end