class CreateStars < ActiveRecord::Migration[5.0]
  def change
    create_table :stars do |t|
      t.references :vegetable_process, foreign_key: true
      t.integer :stared_by

      t.timestamps
    end
  end
end
