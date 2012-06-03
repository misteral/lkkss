class CreatePipes < ActiveRecord::Migration
  def change
    create_table :pipes do |t|
      t.string :notation
      t.integer :passport_pipe_id
      t.integer :type_pipe_id

      t.timestamps
    end
  end
end
