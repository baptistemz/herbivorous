class CreateSeeds < ActiveRecord::Migration
  def change
    create_table :seeds do |t|
      t.string :kind
      t.date :term_date
      t.date :planting_date
      t.references :vegetable_process, index: true, foreign_key: true
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
