class UsersController < ApplicationController
  def index
    redirect_to '/users/signin'
  end

  def signin
    useremail = params[:useremail]
    userpassword = params[:userpwd]
  end

  def signup
  end
  def registuser
    resp = {firstname:params[:firstname], lastname:params[:lastname], useremail: params[:useremail], userpwd: params[:userpwd]}
    Rails.logger.info(resp)
    @user = User.new(resp)
    if @user.save 
      redirect_to '/users/signin'
    end
  end

  def confirmuser
    redirect_to '/mainpage/index'
    # useremail = params[:useremail]
    # userpwd   = params[:userpwd]
    # @user = User.find_by(useremail: useremail, userpwd: userpwd)
    # if @user
    #   redirect_to '/users/signin'
    # else
    #   session[:useremail] = useremail
    #   redirect_to '/urlshorter/index'
    # end
  end
end
