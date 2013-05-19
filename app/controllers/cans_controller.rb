class CansController < ApplicationController
  before_filter :signed_in_user

  def index
      @cans = Can.all
	
	  respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @users }
    end
  end
  
  def new
    @can = Can.new
  end
  
  def edit
    @can = Can.find(params[:id])
  end

  def create
    @can = current_user.cans.build(params[:can])
	if @can.save
      flash[:success] = "Can created!"
      redirect_to current_user
	else
	  render current_user
	end
  end
  
  def update
    @can = Can.find(params[:id])
	if @can.update_attributes(params[:can])
	  flash[:success] = "Micropost created!"
      redirect_to current_user
    else
      render current_user
    end
  end

  def destroy
    @can = Can.find(params[:id])
    @can.destroy
	redirect_to current_user
  end

end