class AddCertificateIdToResults < ActiveRecord::Migration
  def change
    add_column :results, :certificate_id, :integer
  end
end
