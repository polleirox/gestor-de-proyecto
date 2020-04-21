class CreateProjects < ActiveRecord::Migration[5.2]
  def change
    create_table :projects do |t|
      t.string :name
      t.text :description
      t.date :star
      t.date :end
      t.string :state

      t.timestamps
    end
  end
end
