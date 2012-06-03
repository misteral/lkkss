class CreateZavods < ActiveRecord::Migration
  def change
    create_table :zavods do |t|
      t.string :name
      t.string :shot_name

      t.timestamps
    end
  end
end
