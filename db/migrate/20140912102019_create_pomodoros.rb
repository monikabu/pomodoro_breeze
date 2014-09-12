class CreatePomodoros < ActiveRecord::Migration
  def change
    create_table :pomodoros do |t|
      t.integer :task_id
      t.integer :count
      t.timestamp :start_point
      t.timestamp :end_point

      t.timestamps
    end
  end
end
