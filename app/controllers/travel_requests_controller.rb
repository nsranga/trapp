class TravelRequestsController < ApplicationController
 

  def index
    @travel_requests = TravelRequest.all
  end
 
  def show
    @travel_request = TravelRequest.find(params[:id])
  end
 
  def new
    @travel_request = TravelRequest.new
  end
 
  def edit
    @travel_request = TravelRequest.find(params[:id])
  end
 
  def create
    @travel_request = TravelRequest.new(travel_request_params)
 
    if @travel_request.save
      redirect_to travel_requests_path
    else
      render 'new'
    end
  end
 
  def update
    @travel_request = TravelRequest.find(params[:id])
 
    if @travel_request.update(TravelRequest_params)
      redirect_to @travel_request
    else
      render 'edit'
    end
  end
 
  def destroy
    @travel_request = TravelRequest.find(params[:id])
    @travel_request.destroy
 
    redirect_to TravelRequests_path
  end
 
  private
    def travel_request_params
      params.require(:travel_request).permit(:travel_type, :trip_end_date)
    end
end
