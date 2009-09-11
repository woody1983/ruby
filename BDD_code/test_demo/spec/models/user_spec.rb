require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe User do
  before(:each) do
    @valid_attributes = {
      :username => "value for username",
      :email => "value for email",
      :encrypted_password => "value for encrypted_password",
      :password_salt => "value for password_salt"
    }
  end

  it "should create a new instance given valid attributes" do
    User.create!(@valid_attributes)
  end
end
