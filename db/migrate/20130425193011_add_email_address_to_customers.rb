class AddEmailAddressToCustomers < ActiveRecord::Migration
  def change
    add_column :customers, :email_address, :string
  end
end
