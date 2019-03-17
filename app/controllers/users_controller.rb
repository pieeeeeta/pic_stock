class UsersController < ApplicationController
  def index
  end

  def show
    @user = User.find(params[:id])
    @like_picposts = @user.like_picposts
  end
end
