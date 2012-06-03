class AddFromRightSeamToResults < ActiveRecord::Migration
  def change
    add_column :results, :from_right_seam, :integer
  end
end
