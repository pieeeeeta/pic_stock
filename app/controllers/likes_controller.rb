class LikesController < ApplicationController
  before_action  :set_variables

  def like
    like = current_user.likes.new(picpost_id: @picpost.id)
    like.save
  end

  def unlike
    like = current_user.likes.find_by(picpost_id: @picpost.id)
    like.destroy
  end

  private

  def set_variables
    @picpost = Picpost.find(params[:picpost_id])
    @id_name = "#like-link-#{@picpost.id}"
  end


end
