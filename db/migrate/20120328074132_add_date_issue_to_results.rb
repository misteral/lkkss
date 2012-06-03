class AddDateIssueToResults < ActiveRecord::Migration
  def change
    add_column :results, :date_issue, :datetime
    add_column :results, :application_isolation, :datetime
  end
end
