# == Schema Information
#
# Table name: ideas
#
#  id          :integer          not null, primary key
#  title       :string(255)
#  desc_md     :text
#  desc_html   :text
#  status      :string(255)
#  category_id :integer
#  created_at  :datetime
#  updated_at  :datetime
#

class Idea < ActiveRecord::Base

  # ------------------------------------------ Plugins

  has_paper_trail

  converts_markdown :desc_md, :desc_html

  # ------------------------------------------ Associations

  belongs_to :category, :class_name => Setting

  has_many :idea_requirements, :dependent => :destroy
  has_many :requirements, :through => :idea_requirements, :class_name => Setting

  has_many :idea_ratings, :dependent => :destroy
  has_many :ratings, :through => :idea_ratings, :class_name => Setting

  # ------------------------------------------ Attributes

  accepts_nested_attributes_for :idea_requirements
  accepts_nested_attributes_for :idea_ratings

  # ------------------------------------------ Scopes

  scope :empty, -> { where(:title => nil) }

  # ------------------------------------------ Instance Methods

  def description
    desc_html.html_safe
  end

end
