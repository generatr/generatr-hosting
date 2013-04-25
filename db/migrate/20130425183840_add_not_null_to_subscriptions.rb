class AddNotNullToSubscriptions < ActiveRecord::Migration
  def change
    change_column :subscriptions, :plan_id, :integer, null: false
    change_column :subscriptions, :customer_id, :integer, null: false
    change_column :subscriptions, :start_date, :datetime, null: false
    change_column :subscriptions, :suspended, :boolean, null: false
    change_column :subscriptions, :deleted, :boolean, null: false
  end
end
