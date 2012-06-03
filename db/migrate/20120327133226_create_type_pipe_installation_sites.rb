class CreateTypePipeInstallationSites < ActiveRecord::Migration
  def change
    create_table :type_pipe_installation_sites do |t|
      t.integer :type_pipe_id
      t.integer :installation_site_id

      t.timestamps
    end
  end
end
