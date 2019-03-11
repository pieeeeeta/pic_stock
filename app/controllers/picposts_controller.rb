class PicpostsController < ApplicationController

  before_action :authenticate_user!, only: [:new, :create]

  def show
    @picpost = Picpost.find(params[:id])
  end

  def new
    @picpost = Picpost.new
  end

  def create
    @picpost = Picpost.create(place: picpost_params[:place], text: picpost_params[:text], user_id: current_user.id, picture: picpost_params[:picture])
    flash[:success] = "投稿完了しました！"
    redirect_to "/#new"
  end

  private
  
  def picpost_params
    params.require(:picpost).permit(:text, :place, :picture)
  end
  
end
