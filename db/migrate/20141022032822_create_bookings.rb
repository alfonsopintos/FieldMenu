class CreateBookings < ActiveRecord::Migration
  def change
    create_table :bookings do |t|
      t.string :name
      t.string :email
      t.string :phone
      t.references :user, index: true
      t.references :slot, index: true

      t.timestamps
    end
  end
end
