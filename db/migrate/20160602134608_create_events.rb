class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.integer :days_from_start
      t.text :action
      t.string :time_needed
      t.references :vegetable_process, index: true, foreign_key: true
      t.references :seed, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
