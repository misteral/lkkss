class AddResultIdToPipes < ActiveRecord::Migration
  def change
    add_column :pipes, :result_id, :integer
  end
end
