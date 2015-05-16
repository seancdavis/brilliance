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

FactoryGirl.define do
  factory :idea_rating do
    idea_id 1
setting_id 1
value 1
  end

end
