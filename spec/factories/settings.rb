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

FactoryGirl.define do
  factory :setting do
    title "MyString"
type ""
  end

end
