class ChangePseudoByUsername < ActiveRecord::Migration
  def change
    remove_column :users, :pseudo, :string
    add_column :users, :username, :string
  end
end
