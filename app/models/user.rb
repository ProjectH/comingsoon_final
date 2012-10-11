# == Schema Information
#
# Table name: users
#
#  id         :integer          not null, primary key
#  email      :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class User < ActiveRecord::Base
  
  attr_accessible :contact
  
  before_save { |user| user.contact = contact.downcase }
  
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :contact, presence: true, format: { with: VALID_EMAIL_REGEX }, uniqueness: { case_sensitive: false }
 
end

