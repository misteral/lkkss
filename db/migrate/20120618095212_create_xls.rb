class CreateXls < ActiveRecord::Migration
  def change
    create_table :xls do |t|
      t.string :name
      t.integer :number

      t.timestamps
    end
  end
end
