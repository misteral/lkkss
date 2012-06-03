class RemoveInstallationSiteIdToPipes < ActiveRecord::Migration
  def up
    remove_column :pipes, :installation_site_id
  end

  def down
    add_column :pipes, :installation_site_id, :integer
  end
end
