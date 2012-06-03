class AddInstrumentationIdToCertificates < ActiveRecord::Migration
  def change
    add_column :certificates, :instrumentation_id, :integer
  end
end
