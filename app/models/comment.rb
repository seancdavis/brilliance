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

class Comment < PeanutGallery::Comment
end
