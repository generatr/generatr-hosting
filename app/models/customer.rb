# == Schema Information
#
# Table name: customers
#
#  id            :integer          not null, primary key
#  name          :string(255)
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  email_address :string(255)
#  phone_number  :string(255)
#

class Customer < ActiveRecord::Base
  has_many :subscriptions, dependent: :destroy
end
