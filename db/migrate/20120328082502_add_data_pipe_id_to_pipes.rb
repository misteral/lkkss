class AddDataPipeIdToPipes < ActiveRecord::Migration
  def change
    add_column :pipes, :data_pipe_id, :integer
  end
end
