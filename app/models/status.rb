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

  has_paper_trail

  has_superslug :title, :slug, :force_update => true

  # ------------------------------------------ Associations

  has_many :ideas

  # ------------------------------------------ Scopes

  scope :alpha, -> { order('title asc') }

  # ------------------------------------------ Validations

  validates :title, :presence => true

  # ------------------------------------------ Instance Methods

  def to_s
    title
  end

end
