class RemoveMagneticToCertificates < ActiveRecord::Migration
  def up
    remove_column :certificates, :magnetic
  end

  def down
    add_column :certificates, :magnetic, :string
  end
end
