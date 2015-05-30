# == Schema Information
#
# Table name: users
#
#  id                     :integer          not null, primary key
#  email                  :string(255)      default(""), not null
#  encrypted_password     :string(255)      default(""), not null
#  is_admin               :boolean          default(FALSE)
#  reset_password_token   :string(255)
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  sign_in_count          :integer          default(0), not null
#  current_sign_in_at     :datetime
#  last_sign_in_at        :datetime
#  current_sign_in_ip     :inet
#  last_sign_in_ip        :inet
#  created_at             :datetime
#  updated_at             :datetime
#  name                   :string(255)
#

class User < ActiveRecord::Base

  # ------------------------------------------ Plugins

  include PgSearch
  multisearchable :against => [:name, :email]

  has_paper_trail

  devise :database_authenticatable, :recoverable, :rememberable, :trackable,
         :validatable

  # ------------------------------------------ Associations

  has_many :ideas, :as => :creator

  # ------------------------------------------ Scopes

  scope :alpha, -> { order('email asc') }

  # ------------------------------------------ Instance Methods

  def to_s
    name || email
  end

  def admin?
    is_admin?
  end

end
