class CreateTies < ActiveRecord::Migration
  def change
    create_table :ties do |t|
      t.string :name

      t.timestamps
    end
  end
end
