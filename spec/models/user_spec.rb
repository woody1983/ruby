require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe User do         #describe 描述／形容
  before(:each) do
    @valid_attributes = {
      :username => "404",
      :email => "orange@gmail.com",
      :password => "password",
      :password_confirmation => "password"
    }
    		@user = User.new(@valid_attributes)
  end

	  it 'should be valid 应该是有效的' do # 应该是有效的
        @user.should be_valid
      end
      
      it 'should require a username' do #应该需要一个用户名
        @user.username = ''
        @user.should_not be_valid
        @user.should have(1).errors_on(:username)
      end
      
      it 'should not be valid without a email' do #不应该没有有效的电子邮件？？？
        @user.email = ''
        @user.should_not be_valid
      end
      
      it 'should be valid if email past the correct match' do #应该是有效的电子邮件，如果过去的正确匹配
        @user.email.should match(/^([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})$/i)
      end
      
      it "should have a unique username and password" do #应该有一个独特的用户名和密码
        @first_user = User.create!(@valid_attributes)
        @second_user = User.new(@valid_attributes)
        @second_user.should_not be_valid
        @second_user.should have(1).errors_on(:username)
        @second_user.should have(1).errors_on(:email)
      end
      
      it 'should not be valid without a password' do #不应该是有效的，不需要密码
        @user.password = ''
        @user.should_not be_valid
      end
      
      it 'should be valid if password has a minimum of 4 characters' do#应该是有效的，如果密码有4个字符最低
        @user.password.should have_at_least(4).characters
      end
      
      it 'should be valid if password has not more than 40 characters' do#应该是有效的，如果密码已经不超过40个字符
        @user.password.should have_at_most(40).characters
      end
      
      it 'should be valid if password and password confirmation match' do#应该是有效的，如果密码和确认密码匹配
        @user.password_confirmation.should == @user.password
      end

      it "should encrypt the password before saving to the database" do#之前，应进行加密保存到数据库中的密码
        @user.save
        @user.password_salt.should_not be_nil
        @user.encrypted_password.should_not be_nil
      end
end
