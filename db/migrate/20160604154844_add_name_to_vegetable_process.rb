class AddNameToVegetableProcess < ActiveRecord::Migration
  def change
    add_column :vegetable_processes, :name, :string
  end
end
