class RecordsController < ApplicationController
  def index
    if params[:mode] == 'Need'
	  @records = Need.search(params[:search])
	else
	  @records = Can.search(params[:search])
	end
  end
end
