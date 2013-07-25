class AssignmentsController < ApplicationController

  def index
  end

  def new
    @assignment = Assignment.new
    @assignment.biopsy = params[:biopsy]

  end

  def create
  end

end