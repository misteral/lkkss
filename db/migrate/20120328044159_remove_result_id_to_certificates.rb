class RemoveResultIdToCertificates < ActiveRecord::Migration
  def up
    remove_column :certificates, :result_id
  end

  def down
    add_column :certificates, :result_id, :integer
  end
end
