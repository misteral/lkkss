class CreateInstallationSites < ActiveRecord::Migration
  def change
    create_table :installation_sites do |t|
      t.string :object
      t.datetime :data
      t.string :joint
      t.integer :pipe_id
      t.integer :data_pipe_id

      t.timestamps
    end
  end
end
