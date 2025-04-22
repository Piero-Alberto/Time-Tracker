class CreateTimeEntries < ActiveRecord::Migration[7.1]
  def change
    create_table :time_entries do |t|
      t.string :activity
      t.datetime :started_at
      t.datetime :ended_at

      t.timestamps
    end
  end
end
