class CreateWeapons < ActiveRecord::Migration
  def change
    create_table :weapons do |t|
      t.string :name
      t.text :description
      t.string :address
      t.float :price
      t.string :picture
      t.date :availability_start_on
      t.date :availability_end_on
      t.float :longitude
      t.float :latitude

      t.timestamps null: false
    end
  end
end
