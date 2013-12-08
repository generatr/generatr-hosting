# == Schema Information
#
# Table name: plans
#
#  id         :integer          not null, primary key
#  stripe_id  :string(255)
#  price      :float
#  tax        :float
#  details    :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  name       :string(255)
#

class Plan < ActiveRecord::Base

  def to_s
    name
  end

end
