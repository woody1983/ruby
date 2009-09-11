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

	  it 'should be valid 应该是有效的' do 
        @user.should be_valid #应该是有效的。
      end
      
      it 'should require a username' do #应该需要一个用户名
        @user.username = ''  #如果用户名是空的
        @user.should_not be_valid #@user就不应该是有效的数据
        @user.should have(1).errors_on(:username)
      end
      
      it 'should not be valid without a email' do 
        @user.email = '' #如果是email地址是空的 
        @user.should_not be_valid #那实例也不应该是有效的
      end
      
      it 'should be valid if email past the correct match' do 
        @user.email.should match(/^([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})$/i) #email地址应该符合这种格式
      end
      
      it "should have a unique username and password" do #应该有一个独特的用户名和密码
        @first_user = User.create!(@valid_attributes)
        @second_user = User.new(@valid_attributes)
        @second_user.should_not be_valid
        @second_user.should have(1).errors_on(:username)
        @second_user.should have(1).errors_on(:email)
      end
      
      it 'should not be valid without a password' do 
        @user.password = ''    #如果密码为空
        @user.should_not be_valid #就不应该是有效的
      end
      
      it 'should be valid if password has a minimum of 4 characters' do
        @user.password.should have_at_least(4).characters #密码应该不小于4位
      end
      
      it 'should be valid if password has not more than 40 characters' do
        @user.password.should have_at_most(40).characters #密码不应该超过40个字符
      end
      
      it 'should be valid if password and password confirmation match' do
        @user.password_confirmation.should == @user.password #确认密码应该和密码一致
      end

      it "should encrypt the password before saving to the database" do
        @user.save
        @user.password_salt.should_not be_nil #生成的password_salt不应该为空
        @user.encrypted_password.should_not be_nil #加密处理过的密码不应该为空
      end
end
