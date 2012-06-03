class CreateRepresentTrans < ActiveRecord::Migration
  def change
    create_table :represent_trans do |t|
      t.string :first_name
      t.string :last_name
      t.string :middle_name
      t.string :job
      t.string :organization

      t.timestamps
    end
  end
end
