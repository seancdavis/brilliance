# == Schema Information
#
# Table name: settings
#
#  id         :integer          not null, primary key
#  key        :string(255)
#  value      :text
#  created_at :datetime
#  updated_at :datetime
#

class Setting < ActiveRecord::Base

  # ------------------------------------------ Plugins

  has_paper_trail

  # ------------------------------------------ Validations

  validates :key, :value, :presence => true

end
