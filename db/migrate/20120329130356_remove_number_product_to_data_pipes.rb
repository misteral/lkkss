class RemoveNumberProductToDataPipes < ActiveRecord::Migration
  def up
    remove_column :data_pipes, :number_product
  end

  def down
    add_column :data_pipes, :number_product, :integer
  end
end
