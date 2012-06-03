class AddTypePipeIdToCertificates < ActiveRecord::Migration
  def change
    add_column :certificates, :type_pipe_id, :integer
  end
end
