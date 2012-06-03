class CreateGosts < ActiveRecord::Migration
  def change
    create_table :gosts do |t|
      t.string :name

      t.timestamps
    end
  end
end
