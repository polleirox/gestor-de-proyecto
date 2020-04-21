class RemoveStarFromProject < ActiveRecord::Migration[5.2]
  def change
    remove_column :projects, :star, :string
  end
end
