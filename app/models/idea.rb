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
#  creator_id  :integer
#  difficulty  :integer          default(0)
#  time        :integer          default(0)
#  created_at  :datetime
#  updated_at  :datetime
#

class Idea < ActiveRecord::Base

  # ------------------------------------------ Plugins

  has_paper_trail

  has_superslug

  converts_markdown :desc_md, :desc_html

  # ------------------------------------------ Associations

  belongs_to :category
  belongs_to :status
  belongs_to :creator, :class_name => User

  # ------------------------------------------ Scopes

  scope :empty, -> { where(:title => nil) }

  # ------------------------------------------ Validations

  validates :title, :presence => true

  # ------------------------------------------ Instance Methods

  def description
    desc_html.html_safe
  end

end
