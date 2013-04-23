# == Schema Information
#
# Table name: subscriptions
#
#  id          :integer          not null, primary key
#  plan_id     :integer
#  customer_id :integer
#  start_date  :datetime
#  suspended   :boolean
#  deleted     :boolean
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Subscription < ActiveRecord::Base
  attr_accessible :customer_id, :deleted, :plan_id, :start_date, :suspended
end
