class CreatePassportPipes < ActiveRecord::Migration
  def change
    create_table :passport_pipes do |t|
      t.integer :passport_id
      t.integer :pipe_id

      t.timestamps
    end
  end
end
