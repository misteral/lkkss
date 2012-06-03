class AddPipeIdToResults < ActiveRecord::Migration
  def change
    add_column :results, :pipe_id, :integer
  end
end
