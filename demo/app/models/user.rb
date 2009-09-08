require 'digest/sha1'
class User < ActiveRecord::Base
      # 因为数据库保存的密码是加密后的，
      # 为了设计完整的User模型，
      # 在这里需手工声明 password 和 password_confirmation 属性；
      # 当然，app/views/users 中的部分模板也会用到这两个属性；
      # 另一个好处是为了方便测试。
      attr_accessor :password, :password_confirmation

      # 密码长度不小于4或大于40个字节
      validates_length_of :password, :within => 4..40

      # 用户两次密码输入必须一致
      validates_confirmation_of :password

      # 必填项
      validates_presence_of :username, :email, :password

      # 用户名和密码唯一
      validates_uniqueness_of :username, :email

      # 必须是有效的email格式
      validates_format_of :email,
        :with => /^([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})$/i

      # 钩子方法，保存之前生成 password_salt
      # 并使用 password_salt 和原始密码来加密生成新密码
      before_create :initialize_salt, :encrypt_password
      
      # 生成加密后的字符串并返回
      def encrypt(string)
        generate_hash("--#{password_salt}--#{string}--")
      end
      
      protected
      
      # 加密指定的字符串并返回
      def generate_hash(string)
        Digest::SHA1.hexdigest(string)
      end
      
      # 生成 password_salt并返回
      def initialize_salt
        if new_record?
          self.password_salt = generate_hash("--#{Time.now.to_s}--#{email}--")
        end
      end
      
      # 生成加密后的新密码并返回
      def encrypt_password
        return if password.blank?
        self.encrypted_password = encrypt(password)
      end
        
end
