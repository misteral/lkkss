class CreateKonstrs < ActiveRecord::Migration
  def change
    create_table :konstrs do |t|
      t.string :name
      t.string :shot_name

      t.timestamps
    end
  end
end
