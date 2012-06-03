class RemovePipeIpToInstallationSites < ActiveRecord::Migration
  def up
    remove_column :installation_sites, :pipe_id
  end

  def down
    add_column :installation_sites, :pipe_id, :integer
  end
end
