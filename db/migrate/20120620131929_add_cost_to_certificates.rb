class AddCostToCertificates < ActiveRecord::Migration
  def change
    add_column :certificates, :cost, :integer
  end
end
