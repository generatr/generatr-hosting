class CreateSubscriptions < ActiveRecord::Migration
  def change
    create_table :subscriptions do |t|
      t.integer :plan_id
      t.integer :customer_id
      t.datetime :start_date
      t.boolean :suspended
      t.boolean :deleted

      t.timestamps
    end
  end
end
