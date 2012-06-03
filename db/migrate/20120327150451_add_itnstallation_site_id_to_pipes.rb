class AddItnstallationSiteIdToPipes < ActiveRecord::Migration
  def change
    add_column :pipes, :installation_site_id, :integer
  end
end
