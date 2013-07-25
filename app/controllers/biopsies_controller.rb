class BiopsiesController < ApplicationController

  def new
    @biopsy = Biopsy.new
  end

  def create
    @biopsy = Biopsy.new(params[:biopsy])
    if @biopsy.save
      redirect_to :controller => 'assignments',
                  :action => 'new',
                  :biopsy_id => @biopsy.id
    else

    end
  end


end
