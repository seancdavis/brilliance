# == Schema Information
#
# Table name: statuses
#
#  id         :integer          not null, primary key
#  title      :string(255)
#  slug       :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Status < ActiveRecord::Base

  # ------------------------------------------ Plugins

  has_superslug

end
