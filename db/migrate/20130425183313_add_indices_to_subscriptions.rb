class AddIndicesToSubscriptions < ActiveRecord::Migration
  def change
    add_index :subscriptions, :plan_id
    add_index :subscriptions, :customer_id
    add_index :subscriptions, :start_date
    add_index :subscriptions, :suspended
    add_index :subscriptions, :deleted
  end
end
