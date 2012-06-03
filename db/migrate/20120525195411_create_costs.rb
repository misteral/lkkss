class CreateCosts < ActiveRecord::Migration
  def change
    create_table :costs do |t|
      t.datetime :date_start
      t.datetime :date_end

      t.timestamps
    end
  end
end
