class AddWallTicknessToResults < ActiveRecord::Migration
  def change
    add_column :results, :wall_tickness, :string
    add_column :results, :outside_diameter, :string
  end
end
