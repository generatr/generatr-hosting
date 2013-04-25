class AddDefaultsToSubscription < ActiveRecord::Migration
  def change
    change_column :subscriptions, :deleted, :boolean, default: false
    change_column :subscriptions, :suspended, :boolean, default: false
  end
end
