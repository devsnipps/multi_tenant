class AddColumnOrganizationIdToRestaurants < ActiveRecord::Migration
  def change
    add_column :restaurants, :organization_id, :integer
    add_column :menus, :restaurant_id, :integer
    add_column :items, :menu_id, :integer
  end
end
