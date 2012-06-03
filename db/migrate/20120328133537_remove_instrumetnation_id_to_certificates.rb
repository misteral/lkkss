class RemoveInstrumetnationIdToCertificates < ActiveRecord::Migration
  def up
    remove_column :certificates, :instrumetnation_id
  end

  def down
    add_column :certificates, :instrumetnation_id, :integer
  end
end
