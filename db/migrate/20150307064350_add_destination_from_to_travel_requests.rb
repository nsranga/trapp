class AddDestinationFromToTravelRequests < ActiveRecord::Migration
  def change
    add_column :travel_requests, :from_city, :string
    add_column :travel_requests, :to_city, :string
  end
end
