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

require 'rails_helper'

RSpec.describe IdeaRating, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
