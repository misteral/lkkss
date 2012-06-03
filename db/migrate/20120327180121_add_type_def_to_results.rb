class AddTypeDefToResults < ActiveRecord::Migration
  def change
    add_column :results, :type_def, :string
    add_column :results, :from_mark_butt, :integer
    add_column :results, :length, :integer
    add_column :results, :width, :integer
    add_column :results, :deep, :integer
    add_column :results, :thickness, :integer
    add_column :results, :magnet, :string
  end
end
