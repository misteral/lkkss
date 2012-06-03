class CreateConclusions < ActiveRecord::Migration
  def change
    create_table :conclusions do |t|
      t.string :output
      t.integer :data_pipe_id
      t.integer :type_pipe_id
      t.integer :document_id

      t.timestamps
    end
  end
end
