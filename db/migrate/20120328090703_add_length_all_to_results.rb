class AddLengthAllToResults < ActiveRecord::Migration
  def change
    add_column :results, :length_all, :string
  end
end
