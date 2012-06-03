class RemoveResultIdToPipes < ActiveRecord::Migration
  def up
    remove_column :pipes, :result_id
  end

  def down
    add_column :pipes, :result_id, :integer
  end
end
