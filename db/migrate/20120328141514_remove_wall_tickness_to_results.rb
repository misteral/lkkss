class RemoveWallTicknessToResults < ActiveRecord::Migration
  def up
    remove_column :results, :wall_tickness
    remove_column :results, :outside_diameter
  end

  def down
    add_column :results, :outside_diameter, :integer
    add_column :results, :wall_tickness, :integer
  end
end
