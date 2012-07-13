class CreateReportControls < ActiveRecord::Migration
  def change
    create_table :report_controls do |t|
      t.datetime :date_start

      t.timestamps
    end
  end
end
