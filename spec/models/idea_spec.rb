# == Schema Information
#
# Table name: ideas
#
#  id          :integer          not null, primary key
#  title       :string(255)
#  slug        :string(255)
#  desc_md     :text
#  desc_html   :text
#  status      :string(255)
#  category_id :integer
#  status_id   :integer
#  created_at  :datetime
#  updated_at  :datetime
#

require 'rails_helper'

RSpec.describe Idea, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
