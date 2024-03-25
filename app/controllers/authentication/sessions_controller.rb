class Authentication::SessionsController < ApplicationController
  skip_before_action :protect_pages

  def new
    
  end
  
  def create
      @user = User.find_by("email = :login OR username = :login", {login: params[:session][:login]})
      binding.pry
      if @user&.authenticate(params[:session][:password])
        session[:user_id] = @user.id
        redirect_to products_path, notice: t('.created')
        binding.pry
      else
        redirect_to new_session_path, alert: t('.failed')
      end
  end
  
  # private
  
  # def user_params
  #     params.require(:user).permit(:email, :username, :password)
  # end
end    