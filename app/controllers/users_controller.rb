class UsersController < ApplicationController
 
  def new
    @user = User.new
  end
  
  def create
    @user = User.new(params[:user])
    if @user.save
      UserMailer.comingsoon_registration(@user).deliver
      flash[:success] = "Check your mail and welcome on board !"
      #render new
      redirect_to root_path
    else
      render 'new'
      #redirect_to root_path
      #flash[:error] = "Email is invalid"
    end
  end
    
    # def index
    #   @user = User.first
    #   respond_to do |format|
    #     format.json{ render @user }
    #   end
    # end

end