class AddCertificToLoadcertifics < ActiveRecord::Migration
  def change
    add_column :loadcertifics, :certific, :string
  end
end
