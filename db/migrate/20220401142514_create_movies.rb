class CreateMovies < ActiveRecord::Migration[7.0]
  def change
    create_table :movies do |t|
      t.integer "report_id"
      t.string "movie_title"
      t.integer "runtime"
      t.integer "theater_number"
      t.datetime "time_slot" #saved as year-month-day-hour-minute
      t.integer "tickets_remaining"
      t.timestamps
    end
  end
end
