class AddNumberProductToDataPipes < ActiveRecord::Migration
  def change
    add_column :data_pipes, :number_product, :string
  end
end
