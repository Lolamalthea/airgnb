class CreateBookings < ActiveRecord::Migration
  def change
    create_table :bookings do |t|
      t.references :user, index: true, foreign_key: true
      t.references :weapon, index: true, foreign_key: true
      t.date :start_date_on
      t.date :end_date_on
      t.float :price_paid
      t.integer :user_rating
      t.text :user_review
      t.integer :owner_rating
      t.text :owner_review

      t.timestamps null: false
    end
  end
end
