class CreateTravelRequests < ActiveRecord::Migration
  def change
    create_table :travel_requests do |t|
      t.string :travel_type
      t.date :trip_end_date
      t.datetime :trip_depart
      t.datetime :trip_return
      t.string :onward_mode
      t.string :onward_flight_class
      t.string :onward_train_class
      t.string :onward_book_by
      t.string :return_mode
      t.string :return_flight_class
      t.string :return_train_class
      t.string :return_book_by
      t.string :supervisor
      t.string :employee_cell
      t.string :alternate_approver
      t.string :alternate_approver_email
      t.text :reason_for_travel
      t.string :purpose_of_travel
      t.boolean :accommodation_required

      t.timestamps null: false
    end
  end
end
