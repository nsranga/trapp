class ModifyRolesColumnNameInUsers < ActiveRecord::Migration
  def change
  	change_table :users do |t|
  	  t.rename :role, :roles
  	end 
  end
end
