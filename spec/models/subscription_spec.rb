# == Schema Information
#
# Table name: subscriptions
#
#  id          :integer          not null, primary key
#  plan_id     :integer
#  customer_id :integer
#  start_date  :datetime
#  suspended   :boolean          default(FALSE)
#  deleted     :boolean          default(FALSE)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'spec_helper'

describe Subscription do
  pending "add some examples to (or delete) #{__FILE__}"
end
