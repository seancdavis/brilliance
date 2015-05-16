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

require 'rails_helper'

RSpec.describe IdeaRequirement, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
