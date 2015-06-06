class CreateGoals < ActiveRecord::Migration
  def change
    create_table :goals do |t|
      t.string :goal_id
      t.text :goal_description
      t.datetime :timeframe
      t.string :tag
      t.boolean :priority
      t.boolean :completed

      t.timestamps null: false
    end
  end
end
