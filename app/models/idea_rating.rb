# == Schema Information
#
# Table name: idea_ratings
#
#  id         :integer          not null, primary key
#  idea_id    :integer
#  setting_id :integer
#  value      :integer
#  created_at :datetime
#  updated_at :datetime
#

class IdeaRating < ActiveRecord::Base

  # ------------------------------------------ Associations

  belongs_to :idea
  belongs_to :rating, :class_name => Setting, :foreign_key => :setting_id

  # ------------------------------------------ Validations

  validates :idea_id, :setting_id, :value, :presence => true

end
