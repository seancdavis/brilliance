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

class Idea < ActiveRecord::Base

  # ------------------------------------------ Plugins

  has_paper_trail

  has_superslug

  converts_markdown :desc_md, :desc_html

  has_comments

  include PgSearch
  pg_search_scope :search_content, :against => [:title, :desc_md]
  multisearchable :against => [:title, :desc_md]

  # ------------------------------------------ Associations

  belongs_to :category
  belongs_to :status
  belongs_to :creator, :class_name => User

  # ------------------------------------------ Scopes

  scope :with_includes, -> { includes(:category, :status, :creator) }
  scope :by_most_recent, -> { order('created_at desc') }

  # ------------------------------------------ Validations

  validates :title, :category_id, :presence => true

  # ------------------------------------------ Instance Methods

  def description
    desc_html.html_safe
  end

  def to_s
    title
  end

end
