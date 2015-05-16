# == Schema Information
#
# Table name: ideas
#
#  id         :integer          not null, primary key
#  title      :string(255)
#  desc_md    :text
#  desc_html  :text
#  created_at :datetime
#  updated_at :datetime
#

FactoryGirl.define do
  factory :idea do
    title "MyString"
desc_md "MyText"
desc_html "MyText"
  end

end
