class CreateReservations < ActiveRecord::Migration[7.1]
  def change
    create_table :reservations do |t|
      t.string :name
      t.string :email
      t.datetime :reservation_time
      t.references :table, null: false, foreign_key: true

      t.timestamps
    end
  end
end
