class UsersController < ApplicationController
  def new
    user = User.new
    # ここでUserのEmailからGravater＿idを作る
  end

  def show
    user = User.find(params[:id])
    render json: user
  end

  def create
    # ここのparamsはどう使うか後で見る
    gravatar_id = Digest::MD5::hexdigest(user_params[:email].downcase)
    gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}"
    user = User.new(name: user_params[:name], email: user_params[:email], password: user_params[:password], password_confirmation: user_params[:confirmation], gravatar_id: gravatar_url)
    if user.save
      render json: user
    else
      render json: user.errors.full_messages
    end
  end

  private
  
    def user_params
      params.permit(:name, :email, :password, :confirmation)
    end

end
