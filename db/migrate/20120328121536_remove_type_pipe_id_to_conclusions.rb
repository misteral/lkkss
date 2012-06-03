class RemoveTypePipeIdToConclusions < ActiveRecord::Migration
  def up
    remove_column :conclusions, :type_pipe_id
    remove_column :conclusions, :data_pipe_id
  end

  def down
    add_column :conclusions, :data_pipe_id, :integer
    add_column :conclusions, :type_pipe_id, :integer
  end
end
