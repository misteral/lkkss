class CreateLoadcertifics < ActiveRecord::Migration
  def change
    create_table :loadcertifics do |t|
      t.string :name

      t.timestamps
    end
  end
end
