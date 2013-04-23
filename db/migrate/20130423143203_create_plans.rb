class CreatePlans < ActiveRecord::Migration
  def change
    create_table :plans do |t|
      t.string :stripe_id
      t.float :price
      t.float :tax
      t.text :details

      t.timestamps
    end
  end
end
