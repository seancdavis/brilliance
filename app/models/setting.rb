# == Schema Information
#
# Table name: settings
#
#  id         :integer          not null, primary key
#  title      :string(255)
#  group      :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Setting < ActiveRecord::Base

  # ------------------------------------------ Plugins

  has_paper_trail

  # ------------------------------------------ Class Methods

  def self.validated_groups
    groups.map(&:singularize)
  end

  def self.groups
    ['requirements','statuses','categories','ratings']
  end

end
