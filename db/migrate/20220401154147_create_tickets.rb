class CreateTickets < ActiveRecord::Migration[7.0]
  def change
    create_table :tickets do |t|
      t.integer "movie_id"
      t.integer "tickets_sold"

      t.timestamps
    end
  end
end
