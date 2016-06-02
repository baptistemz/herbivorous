class CreateVegetableProcesses < ActiveRecord::Migration
  def change
    create_table :vegetable_processes do |t|
      t.integer :maturation_length
      t.string :climate
      t.string :environment
      t.integer :difficulty
      t.references :user

      t.timestamps null: false
    end
  end
end
