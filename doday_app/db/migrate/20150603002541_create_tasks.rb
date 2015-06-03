class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :task_ID
      t.text :task_description
      t.string :time_frame
      t.binary :priority
      t.boolean :completed

      t.timestamps null: false
    end
  end
end
