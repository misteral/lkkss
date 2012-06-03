class AddLinkToDownloads < ActiveRecord::Migration
  def change
    add_column :downloads, :link, :string
  end
end
