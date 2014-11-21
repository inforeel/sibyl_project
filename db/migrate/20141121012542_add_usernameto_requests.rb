class AddUsernametoRequests < ActiveRecord::Migration
  def change
  	add_column :requests, :username, :text
  end
end
