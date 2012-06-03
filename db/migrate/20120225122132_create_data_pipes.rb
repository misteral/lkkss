class CreateDataPipes < ActiveRecord::Migration
  def change
    create_table :data_pipes do |t|
      t.integer :number_product
      t.integer :amount

      t.timestamps
    end
  end
end
