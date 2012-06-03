class CreateAkts < ActiveRecord::Migration
  def change
    create_table :akts do |t|
      t.datetime :data_akt
      t.integer :num_trub_oip
      t.integer :num_trub
      t.integer :konstr_id
      t.integer :zavod_id
      t.integer :tipdef_id
      t.integer :ntrub_id

      t.timestamps
    end
  end
end
