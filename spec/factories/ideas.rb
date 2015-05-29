# == Schema Information
#
# Table name: ideas
#
#  id          :integer          not null, primary key
#  title       :string(255)
#  slug        :string(255)
#  desc_md     :text
#  desc_html   :text
#  category_id :integer
#  status_id   :integer
#  creator_id  :integer
#  created_at  :datetime
#  updated_at  :datetime
#

FactoryGirl.define do
  factory :idea do
    title "MyString"
desc_md "MyText"
desc_html "MyText"
  end

end
