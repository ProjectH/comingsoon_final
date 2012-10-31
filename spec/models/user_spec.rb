# == Schema Information
#
# Table name: users
#
#  id         :integer          not null, primary key
#  email      :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'spec_helper'

describe User do
  before { @user = User.new(contact: "user@example.com") }

  subject {@user}

  it { should respond_to(:contact) }
  
  describe "when email is not present" do
    before{@user.contact= ""}
      it {should_not be_valid}
  end
  
   describe "when email format is invalid" do
    it "should be invalid" do
      addresses = %w[user@foo,com user_at_foo.org example.user@foo.
                     foo@bar_baz.com foo@bar+baz.com]
      addresses.each do |invalid_address|
        @user.contact = invalid_address
        @user.should_not be_valid
      end      
    end
  end
 
  describe "when email format is valid" do
    it "should be valid" do
      addresses = %w[user@foo.COM A_US-ER@f.b.org frst.lst@foo.jp a+b@baz.cn]
      addresses.each do |valid_address|
        @user.contact = valid_address
        @user.should be_valid
      end      
    end
  end
  
#    describe "when email address is already taken" do
#     before do
#       user_with_same_contact = @user.dup
#       user_with_same_email.email = @user.email.upcase
#       user_with_same_email.save
#     end

#     it { should_not be_valid }
#   end

 end