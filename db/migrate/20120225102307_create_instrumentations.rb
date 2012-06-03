class CreateInstrumentations < ActiveRecord::Migration
  def change
    create_table :instrumentations do |t|
      t.string :name
      t.string :mark
      t.datetime :date_verification
      t.integer :certificate

      t.timestamps
    end
  end
end
