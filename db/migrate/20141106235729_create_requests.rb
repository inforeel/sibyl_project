class CreateRequests < ActiveRecord::Migration
  def change
    create_table :requests do |t|
      t.text :title
      t.text :question
      t.text :due_date
      t.text :user_id

      t.timestamps
    end
  end
end
