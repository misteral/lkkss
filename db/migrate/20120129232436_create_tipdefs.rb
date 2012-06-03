class CreateTipdefs < ActiveRecord::Migration
  def change
    create_table :tipdefs do |t|
      t.string :name

      t.timestamps
    end
  end
end
