# == Schema Information
#
# Table name: admins
#
#  id         :integer          not null, primary key
#  name       :string
#  active     :boolean
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Admin < ActiveRecord::Base
  has_one :user, as: :profile
end
