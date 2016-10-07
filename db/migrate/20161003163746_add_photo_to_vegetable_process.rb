class AddPhotoToVegetableProcess < ActiveRecord::Migration[5.0]
  def change
    add_column :vegetable_processes, :photo, :string
  end
end
