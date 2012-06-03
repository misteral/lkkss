class CreateManufacturs < ActiveRecord::Migration
  def change
    create_table :manufacturs do |t|
      t.string :name
      t.string :address
      t.string :phone

      t.timestamps
    end
  end
end
