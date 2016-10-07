class ReplaceKindByNameInSeeds < ActiveRecord::Migration[5.0]
  def up
    add_column :seeds, :name, :string
    remove_column :seeds, :kind, :string
  end

  def down
    remove_column :seeds, :name, :string
    add_column :seeds, :kind, :string
  end
end
