require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe User do
  before(:each) do
    @valid_attributes = {
      :username => "orange",
      :email => "orange@gmail.com",
      :password => "password",
      :password_confirmation => "password"
    }
    @user = User.new(@valid_attributes)
  end

   it "should encrypt the password before saving to the database" do
        @user.save
        @user.password.should_not be_nil
        @user.password_confirmation.should_not be_nil
   end
end
