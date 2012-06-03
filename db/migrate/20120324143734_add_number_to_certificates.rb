class AddNumberToCertificates < ActiveRecord::Migration
  def change
    add_column :certificates, :number, :string
  end
end
