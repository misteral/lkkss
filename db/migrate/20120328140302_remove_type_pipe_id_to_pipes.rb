class RemoveTypePipeIdToPipes < ActiveRecord::Migration
  def up
    remove_column :pipes, :type_pipe_id
  end

  def down
    add_column :pipes, :type_pipe_id, :integer
  end
end
