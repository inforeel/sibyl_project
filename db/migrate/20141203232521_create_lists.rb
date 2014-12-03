class CreateLists < ActiveRecord::Migration
  def change
    create_table :lists do |t|
      t.text :name
      t.text :machine_name
      t.text :internal_url

      t.timestamps
    end
  end
end
