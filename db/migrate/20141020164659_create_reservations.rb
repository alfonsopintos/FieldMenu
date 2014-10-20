class CreateReservations < ActiveRecord::Migration
  def change
    create_table :reservations do |t|
      t.string :start_time
      t.string :end_time
      t.references :field, index: true

      t.timestamps
    end
  end
end
