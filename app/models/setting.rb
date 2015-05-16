# == Schema Information
#
# Table name: settings
#
#  id         :integer          not null, primary key
#  title      :string(255)
#  group      :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Setting < ActiveRecord::Base

  # ------------------------------------------ Plugins

  has_paper_trail

  # ------------------------------------------ Associations

  has_many :ideas, :as => :category

  # ------------------------------------------ Validations

  validates :title, :group, :presence => true

  validate :existence_of_group

  # ------------------------------------------ Class Methods

  def self.validated_groups
    groups.map(&:singularize)
  end

  def self.groups
    ['requirements','statuses','categories','ratings']
  end

  # ------------------------------------------ Private Methods

  private

    def existence_of_group
      unless Setting.validated_groups.includes?(self.group)
        errors.add(:group, "is not a group.")
      end
    end

end
