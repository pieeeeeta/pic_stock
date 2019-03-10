class PicpostsController < ApplicationController

  before_action :authenticate_user!, only: [:new, :create]

  def new
    @picpost = Picpost.new
  end

  def create
    @picpost = Picpost.create(place: picpost_params[:place], title: picpost_params[:title], user_id: current_user.id, picture: picpost_params[:picture])
  end

  private
  
  def picpost_params
    params.require(:picpost).permit(:title, :place, :picture)
  end
  
end
