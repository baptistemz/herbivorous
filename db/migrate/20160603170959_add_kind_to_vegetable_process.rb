class AddKindToVegetableProcess < ActiveRecord::Migration
  def change
    add_column :vegetable_processes, :kind, :string
  end
end
