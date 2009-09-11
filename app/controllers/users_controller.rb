class UsersController < ApplicationController
   def new
        @user = User.new
      end
      
      def create
        @user = User.new(params[:user])
        if @user.save
          flash[:notice] = '注册成功！'
          redirect_to(@user)
        else
          flash[:notice] = '注册失败！'
          render :action => "new"
        end
      end
      
      def show
        @user = User.find(params[:id])
      end

end
