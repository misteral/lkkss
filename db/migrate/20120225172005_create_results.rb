class CreateResults < ActiveRecord::Migration
  def change
    create_table :results do |t|
      t.integer :outside_diameter
      t.integer :wall_tickness
      t.string :construction
      t.string :roundness
      t.string :stratification
      t.string :defect
      t.string :isolation
      t.string :stamp_valid
      t.integer :mass_init

      t.timestamps
    end
  end
end
