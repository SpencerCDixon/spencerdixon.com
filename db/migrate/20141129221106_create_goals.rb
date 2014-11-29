class CreateGoals < ActiveRecord::Migration
  def change
    create_table :goals do |t|
      t.integer :user_id, null: false
      t.string :name, null: false
      t.datetime :start_date, null: false, default: Time.now
      t.datetime :due_date, null: false
      t.boolean :complete?, default: false, null: false
      t.datetime :completed_date
    end
  end
end
