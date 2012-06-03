class CreateNtrubs < ActiveRecord::Migration
  def change
    create_table :ntrubs do |t|
      t.string :name
      t.string :shot_name

      t.timestamps
    end
  end
end
