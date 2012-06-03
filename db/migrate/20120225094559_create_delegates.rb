class CreateDelegates < ActiveRecord::Migration
  def change
    create_table :delegates do |t|
      t.string :name_lab
      t.integer :certificate
      t.datetime :period_valid
      t.string :first_name
      t.string :last_name
      t.string :middle_name
      t.string :job
      t.integer :certificate_competence
      t.string :type_nk
      t.string :level_nk

      t.timestamps
    end
  end
end
