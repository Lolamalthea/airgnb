class AddCategoryToWeapon < ActiveRecord::Migration
  def change
    add_column :weapons, :category, :string
  end
end
