class AddNotNullToSubscriptions < ActiveRecord::Migration
  def change
    change_column :subscriptions, :suspended, :boolean, null: false
    change_column :subscriptions, :deleted, :boolean, null: false
  end
end
