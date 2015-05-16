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

FactoryGirl.define do
  factory :idea_requirement do
    idea_id 1
setting_id 1
value false
  end

end
