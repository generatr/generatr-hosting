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

require 'spec_helper'

describe Subscription do
  pending "add some examples to (or delete) #{__FILE__}"
end
