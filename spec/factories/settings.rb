# == Schema Information
#
# Table name: settings
#
#  id         :integer          not null, primary key
#  title      :string(255)
#  slug       :string(255)
#  body       :text
#  created_at :datetime
#  updated_at :datetime
#

FactoryGirl.define do
  factory :setting do
    title "MyString"
type ""
  end

end
