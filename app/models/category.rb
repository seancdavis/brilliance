# == Schema Information
#
# Table name: categories
#
#  id         :integer          not null, primary key
#  title      :string(255)
#  slug       :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Category < ActiveRecord::Base

  # ------------------------------------------ Plugins

  has_paper_trail

  has_superslug :title, :slug, :force_update => true

  # ------------------------------------------ Associations

  has_many :ideas

  # ------------------------------------------ Scopes

  scope :alpha, -> { order('title asc') }

  # ------------------------------------------ Validations

  validates :title, :presence => true

end
