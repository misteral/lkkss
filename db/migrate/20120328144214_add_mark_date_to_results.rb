class AddMarkDateToResults < ActiveRecord::Migration
  def change
    add_column :results, :mark_date, :string
  end
end
