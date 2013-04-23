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
  attr_accessible :name, :details, :price, :stripe_id, :tax

  def to_s
    name
  end

end
