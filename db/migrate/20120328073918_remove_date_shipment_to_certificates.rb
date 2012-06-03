class RemoveDateShipmentToCertificates < ActiveRecord::Migration
  def up
    remove_column :certificates, :date_shipment
    remove_column :certificates, :application_isolation
  end

  def down
    add_column :certificates, :application_isolation, :datetime
    add_column :certificates, :date_shipment, :datetime
  end
end
