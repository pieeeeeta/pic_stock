class ToppageController < ApplicationController
  def index
    @picposts = Picpost.order('id DESC').limit(12)

    @picposts_ranking = Picpost.order('likes_count DESC').limit(9)
  end
end
