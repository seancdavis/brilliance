# == Schema Information
#
# Table name: comments
#
#  id         :integer          not null, primary key
#  item_id    :integer
#  item_type  :string(255)
#  author_id  :integer
#  markdown   :text
#  html       :text
#  created_at :datetime
#  updated_at :datetime
#

require 'rails_helper'

RSpec.describe Comment, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
