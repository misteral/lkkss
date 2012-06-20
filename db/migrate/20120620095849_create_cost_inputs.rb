class CreateCostInputs < ActiveRecord::Migration
  def change
    create_table :cost_inputs do |t|
      t.integer :hour
      t.integer :material

      t.timestamps
    end
  end
end
