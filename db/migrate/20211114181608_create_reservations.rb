class CreateReservations < ActiveRecord::Migration[6.1]
  def change
    create_table :reservations do |t|
      t.references :user, null: false, foreign_key: true
      t.references :calendar, null: false, foreign_key: true

      t.timestamps
    end
  end
end
