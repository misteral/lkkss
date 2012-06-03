class RemoveDataPipeIdToInstallationSites < ActiveRecord::Migration
  def up
    remove_column :installation_sites, :data_pipe_id
  end

  def down
    add_column :installation_sites, :data_pipe_id, :integer
  end
end
