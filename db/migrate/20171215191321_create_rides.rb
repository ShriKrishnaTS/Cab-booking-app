class CreateRides < ActiveRecord::Migration[5.0]
  def change
    create_table :rides do |t|
      t.float :start_latitude
      t.float :start_longitude
      t.integer :cab_id
      t.datetime :start_time
      t.datetime :end_time
      t.float :end_latitude
      t.float :end_longitude
      t.integer :status, default: 0
    end
  end
end
