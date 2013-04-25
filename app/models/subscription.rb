# == Schema Information
#
# Table name: subscriptions
#
#  id          :integer          not null, primary key
#  plan_id     :integer          not null
#  customer_id :integer          not null
#  start_date  :datetime         not null
#  suspended   :boolean          default(FALSE), not null
#  deleted     :boolean          default(FALSE), not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Subscription < ActiveRecord::Base
  attr_accessible :deleted, :start_date, :suspended, :plan_id, :customer_id
  belongs_to :customer
  belongs_to :plan

  validates :start_date, presence: true
  validates :plan_id, presence: true
  validates :customer_id, presence: true

end
