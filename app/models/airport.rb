# == Schema Information
#
# Table name: airports
#
#  id         :bigint           not null, primary key
#  name       :string
#  code       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Airport < ApplicationRecord
end
