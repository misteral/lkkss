class CreateMagazines < ActiveRecord::Migration
  def change
    create_table :magazines do |t|
      t.datetime :start

      t.timestamps
    end
  end
end
