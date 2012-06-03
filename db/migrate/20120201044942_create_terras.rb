class CreateTerras < ActiveRecord::Migration
  def change
    create_table :terras do |t|
      t.string :name

      t.timestamps
    end
  end
end
