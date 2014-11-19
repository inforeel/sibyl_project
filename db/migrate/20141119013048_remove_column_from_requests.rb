class RemoveColumnFromRequests < ActiveRecord::Migration
  def change
    remove_column :requests, :title, :text
  end
end
