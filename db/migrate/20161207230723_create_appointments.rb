class CreateAppointments < ActiveRecord::Migration
  def change
    create_table :appointments do |t|
      t.integer :mentor_id
      t.integer :student_id
      t.string :topic
      t.datetime :start_time
      t.datetime :end_time

      t.timestamps
    end
  end
end
