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

class Idea < ActiveRecord::Base

  # ------------------------------------------ Plugins

  has_paper_trail

  # ------------------------------------------ Instance Methods

  def description
    desc_html.html_safe
  end

end
