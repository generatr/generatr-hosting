class AddNameToPlan < ActiveRecord::Migration
  def change
    add_column :plans, :name, :string
    add_index  :plans, :name
  end
end
