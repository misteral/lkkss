class CreateReportGazcontrols < ActiveRecord::Migration
  def change
    create_table :report_gazcontrols do |t|
      t.datetime :date_start

      t.timestamps
    end
  end
end
