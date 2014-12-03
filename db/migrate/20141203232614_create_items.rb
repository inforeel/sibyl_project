class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.text :name
      t.text :machine_name
      t.text :list
      t.text :description
      t.text :url

      t.timestamps
    end
  end
end
