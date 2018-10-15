class AddColumnPlanIdToUsers < ActiveRecord::Migration
  def change
    add_column :users, :plan_id, :integer
    change_column  :plans, :name, :string
  end
end
