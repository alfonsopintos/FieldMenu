class AddHoursToClient < ActiveRecord::Migration
  def change
    add_column :clients, :open_time, :string
    add_column :clients, :close_time, :string
  end
end
