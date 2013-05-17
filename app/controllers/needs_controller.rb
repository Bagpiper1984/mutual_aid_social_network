class NeedsController < ApplicationController
  before_filter :signed_in_user, expect: [:index]

  def new
    @need = Need.new
  end
  
  def edit
    @need = Need.find(params[:id])
  end

  def create
    @need = current_user.needs.build(params[:need])
	if @need.save
      flash[:success] = "Need created!"
      redirect_to current_user
	else
	  render current_user
	end
  end
  
  def update
    @need = Need.find(params[:id])
	if @need.update_attributes(params[:need])
	  flash[:success] = "Need updated!"
      redirect_to current_user
    else
      render current_user
    end
  end

  def destroy
    @need = Need.find(params[:id])
    @need.destroy
	redirect_to current_user
  end

end