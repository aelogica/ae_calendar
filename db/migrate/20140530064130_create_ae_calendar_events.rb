class CreateAeCalendarEvents < ActiveRecord::Migration
  def change
    create_table :ae_calendar_events do |t|
      t.string :title
      t.date :start

      t.timestamps
    end
  end
end
