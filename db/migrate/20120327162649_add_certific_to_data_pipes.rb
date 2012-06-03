class AddCertificToDataPipes < ActiveRecord::Migration
  def change
    add_column :data_pipes, :certific, :string
  end
end
