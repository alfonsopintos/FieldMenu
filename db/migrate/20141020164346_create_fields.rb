class CreateFields < ActiveRecord::Migration
  def change
    create_table :fields do |t|
      t.references :client, index: true
      t.string :max_people
      t.string :price

      t.timestamps
    end
  end
end
