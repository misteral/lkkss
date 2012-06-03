class CreateSizesPipes < ActiveRecord::Migration
  def change
    create_table :sizes_pipes do |t|
      t.string :bending_angle
      t.string :diameter_trunk
      t.string :wall_tickness
      t.string :strength_class
      t.string :pressure
      t.string :service_factor
      t.string :material
      t.string :climatic
      t.string :diameter_bore
      t.integer :document_id

      t.timestamps
    end
  end
end
