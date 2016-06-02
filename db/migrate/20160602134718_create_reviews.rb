class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.integer :grade
      t.text :comment
      t.references :vegetable_process, index: true, foreign_key: true
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
