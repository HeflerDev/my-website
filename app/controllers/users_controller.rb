class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
      if @user.save
         UserMailer.send_mail(@user).deliver
        redirect_to about_path
      else
        render 'new'
      end
  end


  private
    def user_params
      params.require(:user).permit(:email, :text)
    end
end
