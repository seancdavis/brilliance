# == Schema Information
#
# Table name: idea_requirements
#
#  id         :integer          not null, primary key
#  idea_id    :integer
#  setting_id :integer
#  value      :boolean
#  created_at :datetime
#  updated_at :datetime
#

class IdeaRequirement < ActiveRecord::Base

  # ------------------------------------------ Associations

  belongs_to :idea
  belongs_to :requirement, :class_name => Setting, :foreign_key => :setting_id

  # ------------------------------------------ Validations

  validates :idea_id, :setting_id, :presence => true

end
