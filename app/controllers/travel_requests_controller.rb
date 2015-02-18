class TravelRequestsController < ApplicationController
 

  def index
    @trvl_reqs = TravelRequest.all
  end
 
  def show
    @TravelRequest = TravelRequest.find(params[:id])
  end
 
  def new
    @TravelRequest = TravelRequest.new
  end
 
  def edit
    @TravelRequest = TravelRequest.find(params[:id])
  end
 
  def create
    @TravelRequest = TravelRequest.new(TravelRequest_params)
 
    if @TravelRequest.save
      redirect_to @TravelRequest
    else
      render 'new'
    end
  end
 
  def update
    @TravelRequest = TravelRequest.find(params[:id])
 
    if @TravelRequest.update(TravelRequest_params)
      redirect_to @TravelRequest
    else
      render 'edit'
    end
  end
 
  def destroy
    @TravelRequest = TravelRequest.find(params[:id])
    @TravelRequest.destroy
 
    redirect_to TravelRequests_path
  end
 
  private
    def TravelRequest_params
      params.require(:TravelRequest).permit(:title, :text)
    end
end
