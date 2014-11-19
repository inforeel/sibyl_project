class AddColumnUsersUsername < ActiveRecord::Migration
  def change
  	add_column :users, :username, :text
  end
end
